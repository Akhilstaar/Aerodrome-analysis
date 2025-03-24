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
      DataLayout* dataLayout = new DataLayout(&M); // for tracking size of accesses

      // log function types for each event

      // For getting PID
      FunctionType *pthreadSelfType = FunctionType::get(Type::getInt64Ty(Context), false);
      FunctionCallee pthreadSelfFunc = M.getOrInsertFunction("pthread_self", pthreadSelfType);

      FunctionType *logReadType = FunctionType::get(
          Type::getVoidTy(Context),
          { Type::getInt64Ty(Context),
            PointerType::get(Type::getInt8Ty(Context), 0),
            Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReadFunc = M.getOrInsertFunction("logReadEvent", logReadType);

      FunctionType *logWriteType = FunctionType::get(
          Type::getVoidTy(Context),
          { Type::getInt64Ty(Context),
            PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logWriteFunc = M.getOrInsertFunction("logWriteEvent", logWriteType);

      FunctionType *logAcquireType = FunctionType::get(
          Type::getVoidTy(Context),
          { Type::getInt64Ty(Context),
            PointerType::get(Type::getInt8Ty(Context), 0), 
            Type::getInt32Ty(Context)},
          false);
      FunctionCallee logAcquireFunc = M.getOrInsertFunction("logAcquireEvent", logAcquireType);

      FunctionType *logReleaseType = FunctionType::get(
          Type::getVoidTy(Context),
          { Type::getInt64Ty(Context),
            PointerType::get(Type::getInt8Ty(Context), 0), 
            Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReleaseFunc = M.getOrInsertFunction("logReleaseEvent", logReleaseType);

      FunctionType *logForkType = FunctionType::get(
          Type::getVoidTy(Context), 
          { Type::getInt64Ty(Context), 
            Type::getInt64Ty(Context), 
            Type::getInt32Ty(Context)}, 
          false);
      FunctionCallee logForkFunc = M.getOrInsertFunction("logForkEvent", logForkType);

      FunctionType *logJoinType = FunctionType::get(
          Type::getVoidTy(Context), 
          { Type::getInt64Ty(Context), 
            Type::getInt64Ty(Context), 
            Type::getInt32Ty(Context)},
          false);
      FunctionCallee logJoinFunc = M.getOrInsertFunction("logJoinEvent", logJoinType);

      FunctionType *logAtomicBeginType = FunctionType::get(
          Type::getVoidTy(Context), {
            Type::getInt64Ty(Context), Type::getInt32Ty(Context)}, false);
      FunctionCallee logAtomicBeginFunc = M.getOrInsertFunction("logAtomicBeginEvent", logAtomicBeginType);

      FunctionType *logAtomicEndType = FunctionType::get(
          Type::getVoidTy(Context), {Type::getInt64Ty(Context), Type::getInt32Ty(Context)}, false);
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

            // TODO: Optimize this thing further. (if possible)
            // Get the current TID
            Value *tid = builder.CreateCall(pthreadSelfFunc);
            tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);
            
            // Get the source line number from debug metadata (if available).
            // probably usefull in finding what caused dataRace.
            unsigned line = 0;
            if (DILocation *Loc = I->getDebugLoc())
              line = Loc->getLine();
            Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);

            if (auto *loadInst = dyn_cast<LoadInst>(I))
            {
              // TODO: consider atomic RMW's as well.

              // For non-atomic loads, log a read event
              if (!loadInst->isAtomic())
              {
                // I'm not sure if this is implemented correctly, ie. if it returns the size of load/store access
                Type *ty = loadInst->getType();
                Value *ptr = loadInst->getPointerOperand();
                uint64_t size = dataLayout->getTypeSizeInBits(ty) / 8;

                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logReadFunc, {tid, castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
              }
            }
            else if (auto *storeInst = dyn_cast<StoreInst>(I))
            {
              // For non-atomic stores, log a write event.
              if (!storeInst->isAtomic())
              {
                // I'm not sure if this is implemented correctly, ie. if it returns the size of load/store access
                Value *ptr = storeInst->getPointerOperand();
                Value *storeValue = storeInst->getValueOperand();
                Type *storeType = storeValue->getType();
                uint64_t size = dataLayout->getTypeSizeInBits(storeType) / 8;

                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logWriteFunc, {tid, castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
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
                  builder.CreateCall(logAcquireFunc, {tid, castedPtr, lineConstant});
                }

                // Currently, release event:
                // For mutex unlock only
                else if (funcName == "pthread_mutex_unlock" && CI->arg_size() >= 1)
                {
                  Value *mutexArg = CI->getArgOperand(0);
                  Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                  builder.CreateCall(logReleaseFunc, {tid, castedPtr, lineConstant});
                }
                else if (funcName == "pthread_create")
                {
                  Value *parentTID = tid; // Current thread is the parent ( ? )
                  Value *threadArg = CI->getArgOperand(0);

                  // Load child TID after pthread_create
                  builder.SetInsertPoint(I->getNextNode());
                  Value *childTID = builder.CreateLoad(Type::getInt64Ty(Context), threadArg);
                  builder.CreateCall(logForkFunc, {parentTID, childTID, lineConstant});
                }
                else if (funcName == "pthread_join" && CI->arg_size() >= 1)
                {
                  Value *parentTID = tid; // Current thread is the parent ( ? )
                  Value *childTID = CI->getArgOperand(0);
                  childTID = builder.CreateIntCast(childTID, Type::getInt64Ty(Context), false);
                  builder.CreateCall(logJoinFunc, {parentTID, childTID, lineConstant});
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