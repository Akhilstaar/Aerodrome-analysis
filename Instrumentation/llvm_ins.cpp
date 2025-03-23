#include "llvm/IR/PassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/ADT/STLExtras.h"

using namespace llvm;

namespace
{
  struct ExtendedInstrumentationPass : public PassInfoMixin<ExtendedInstrumentationPass>
  {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
      LLVMContext &Context = M.getContext();
      // DataLayout* dataLayout = new DataLayout(&M); // for tracking size of accesses

      // log function types for each event
      FunctionType *logReadType = FunctionType::get(
          Type::getVoidTy(Context),
          {PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReadFunc = M.getOrInsertFunction("logReadEvent", logReadType);

      FunctionType *logWriteType = FunctionType::get(
          Type::getVoidTy(Context),
          {PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logWriteFunc = M.getOrInsertFunction("logWriteEvent", logWriteType);

      FunctionType *logAcquireType = FunctionType::get(
          Type::getVoidTy(Context),
          {PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logAcquireFunc = M.getOrInsertFunction("logAcquireEvent", logAcquireType);

      FunctionType *logReleaseType = FunctionType::get(
          Type::getVoidTy(Context),
          {PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReleaseFunc = M.getOrInsertFunction("logReleaseEvent", logReleaseType);

      FunctionType *logForkType = FunctionType::get(
          Type::getVoidTy(Context), {Type::getInt32Ty(Context)}, false);
      FunctionCallee logForkFunc = M.getOrInsertFunction("logForkEvent", logForkType);

      FunctionType *logJoinType = FunctionType::get(
          Type::getVoidTy(Context), {Type::getInt32Ty(Context)}, false);
      FunctionCallee logJoinFunc = M.getOrInsertFunction("logJoinEvent", logJoinType);

      FunctionType *logAtomicBeginType = FunctionType::get(
          Type::getVoidTy(Context), {Type::getInt32Ty(Context)}, false);
      FunctionCallee logAtomicBeginFunc = M.getOrInsertFunction("logAtomicBeginEvent", logAtomicBeginType);

      FunctionType *logAtomicEndType = FunctionType::get(
          Type::getVoidTy(Context), {Type::getInt32Ty(Context)}, false);
      FunctionCallee logAtomicEndFunc = M.getOrInsertFunction("logAtomicEndEvent", logAtomicEndType);

      for (Function &F : M)
      {
        if (F.isDeclaration())
          continue;

        for (BasicBlock &BB : F)
        {
          SmallVector<Instruction *, 16> targets;
          for (Instruction &I : BB)
          {
            if (isa<LoadInst>(&I) || isa<StoreInst>(&I))
            {
              targets.push_back(&I);
            }
            else if (auto *CI = dyn_cast<CallBase>(&I))
            {
              if (Function *called = CI->getCalledFunction())
              {
                StringRef funcName = called->getName();
                if (funcName == "pthread_mutex_lock" || funcName == "pthread_mutex_unlock" ||
                    funcName == "pthread_create" || funcName == "pthread_join" ||
                    funcName == "atomic_begin" || funcName == "atomic_end")
                {
                  targets.push_back(&I);
                }
              }
            }
          }

          for (Instruction *I : targets)
          {
            IRBuilder<> builder(I);

            // Get the source line number from debug metadata (if available).
            // probably usefull in finding what caused dataRace.
            unsigned line = 0;
            if (DILocation *Loc = I->getDebugLoc())
              line = Loc->getLine();
            Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);

            if (auto *loadInst = dyn_cast<LoadInst>(I))
            {
              // For non-atomic loads, log a read event.
              if (!loadInst->isAtomic())
              {
                // I'm not sure if this is correct, ie. if it returns the size of load/store access
                Type *ty = loadInst->getType();
                unsigned size = ty->getPrimitiveSizeInBits() / 8;
                Value *ptr = loadInst->getPointerOperand();

                // this was in stackoverflow, doesn't work rn 
                // PointerType *ptrType = cast<PointerType>(ptr->getType());
                // uint64_t size = dataLayout->getTypeStoreSize(ptrType->getPointerElementType());
                
                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logReadFunc, {castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
              }
            }
            else if (auto *storeInst = dyn_cast<StoreInst>(I))
            {
              // For non-atomic stores, log a write event.
              if (!storeInst->isAtomic())
              {
                // I'm not sure if this is correct, ie. if it returns the size of load/store access
                Type *ty = storeInst->getValueOperand()->getType();
                unsigned size = ty->getPrimitiveSizeInBits() / 8;
                Value *ptr = storeInst->getPointerOperand();

                // this was in stackoverflow, doesn't work rn 
                // PointerType *ptrType = cast<PointerType>(ptr->getType());
                // uint64_t size = dataLayout->getTypeStoreSize(ptrType->getPointerElementType());
                
                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logWriteFunc, {castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
              }
            }
            else if (auto *CI = dyn_cast<CallBase>(I))
            {
              if (Function *called = CI->getCalledFunction())
              {
                StringRef funcName = called->getName();
                // Currently, acquire event: 
                // For mutex lock only
                if (funcName == "pthread_mutex_lock" && CI->arg_size() >= 1)
                {
                  Value *mutexArg = CI->getArgOperand(0);
                  Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                  builder.CreateCall(logAcquireFunc, {castedPtr, lineConstant});
                }

                // Currently, release event: 
                // For mutex unlock only
                else if (funcName == "pthread_mutex_unlock" && CI->arg_size() >= 1)
                {
                  Value *mutexArg = CI->getArgOperand(0);
                  Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                  builder.CreateCall(logReleaseFunc, {castedPtr, lineConstant});
                }
                else if (funcName == "pthread_create")
                {
                  builder.CreateCall(logForkFunc, {lineConstant});
                }
                else if (funcName == "pthread_join")
                {
                  builder.CreateCall(logJoinFunc, {lineConstant});
                }
                else if (funcName == "atomic_begin")
                {
                  builder.CreateCall(logAtomicBeginFunc, {lineConstant});
                }
                else if (funcName == "atomic_end")
                {
                  builder.CreateCall(logAtomicEndFunc, {lineConstant});
                }
              }
            }
          }
        }
      }
      return PreservedAnalyses::none();
    }
  };

} // namespace

// Register the pass with the LLVM pass manager.
llvm::PassPluginLibraryInfo getExtendedInstrumentationPassPluginInfo()
{
  return {LLVM_PLUGIN_API_VERSION, "ExtendedInstrumentationPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB)
          {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>)
                {
                  if (Name == "extended-instr-pass")
                  {
                    MPM.addPass(ExtendedInstrumentationPass());
                    return true;
                  }
                  return false;
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo()
{
  return getExtendedInstrumentationPassPluginInfo();
}