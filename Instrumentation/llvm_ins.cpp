// ExtendedInstrumentationPass.cpp
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/ADT/STLExtras.h"

using namespace llvm;

// Event type definitions.
enum EventType
{
  READ_EVENT = 0,
  WRITE_EVENT = 1,
  ACQUIRE_EVENT = 2,
  RELEASE_EVENT = 3,
  FORK_EVENT = 4,
  JOIN_EVENT = 5,
  ATOMIC_BEGIN_EVENT = 6,
  ATOMIC_END_EVENT = 7
};

namespace
{

  struct ExtendedInstrumentationPass : public PassInfoMixin<ExtendedInstrumentationPass>
  {
    // Main entry point for the pass.
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
      LLVMContext &Context = M.getContext();

      // Extend the external logging function signature to include a line number:

      FunctionType *logFuncType =
          FunctionType::get(Type::getVoidTy(Context),
                            {Type::getInt32Ty(Context), PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context)}, false);
      FunctionCallee logFunc = M.getOrInsertFunction("logEvent", logFuncType);

      // Iterate over every function in the module.
      for (Function &F : M)
      {
        if (F.isDeclaration())
          continue;

        for (BasicBlock &BB : F)
        {
          // To avoid iterator invalidation, first collect instructions to instrument.
          SmallVector<Instruction *, 16> targets;
          for (Instruction &I : BB)
          {
            // Instrument loads and stores.
            if (isa<LoadInst>(&I) || isa<StoreInst>(&I))
            {
              targets.push_back(&I);
            }
            else if (auto *CI = dyn_cast<CallBase>(&I))
            {
              // Check for calls to synchronization and atomic marker functions.
              if (Function *called = CI->getCalledFunction())
              {
                StringRef funcName = called->getName();
                if (funcName == "pthread_mutex_lock" ||
                    funcName == "pthread_mutex_unlock" ||
                    funcName == "pthread_create" ||
                    funcName == "pthread_join" ||
                    funcName == "atomic_begin" ||
                    funcName == "atomic_end")
                {
                  targets.push_back(&I);
                }
              }
            }
          }

          // Insert logging calls before each target instruction.
          for (Instruction *I : targets)
          {
            IRBuilder<> builder(I);

            // Get the source line number from debug metadata (if available).
            unsigned line = 0;
            if (DILocation *Loc = I->getDebugLoc())
              line = Loc->getLine();

            if (auto *loadInst = dyn_cast<LoadInst>(I))
            {
              // For non-atomic loads, log a read event.
              if (!loadInst->isAtomic())
              {
                Value *ptr = loadInst->getPointerOperand();
                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), READ_EVENT);
                builder.CreateCall(logFunc,
                                   {eventType, castedPtr,
                                    ConstantInt::get(Type::getInt32Ty(Context), line)});
              }
            }
            else if (auto *storeInst = dyn_cast<StoreInst>(I))
            {
              // For non-atomic stores, log a write event.
              if (!storeInst->isAtomic())
              {
                Value *ptr = storeInst->getPointerOperand();
                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), WRITE_EVENT);
                builder.CreateCall(logFunc,
                                   {eventType, castedPtr,
                                    ConstantInt::get(Type::getInt32Ty(Context), line)});
              }
            }
            else if (auto *CI = dyn_cast<CallBase>(I))
            {
              if (Function *called = CI->getCalledFunction())
              {
                StringRef funcName = called->getName();
                // For mutex lock, log an acquire event.
                if (funcName == "pthread_mutex_lock")
                {
                  if (CI->arg_size() >= 1)
                  {
                    Value *mutexArg = CI->getArgOperand(0);
                    Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                    Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), ACQUIRE_EVENT);
                    builder.CreateCall(logFunc,
                                       {eventType, castedPtr,
                                        ConstantInt::get(Type::getInt32Ty(Context), line)});
                  }
                }
                // For mutex unlock, log a release event.
                else if (funcName == "pthread_mutex_unlock")
                {
                  if (CI->arg_size() >= 1)
                  {
                    Value *mutexArg = CI->getArgOperand(0);
                    Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                    Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), RELEASE_EVENT);
                    builder.CreateCall(logFunc,
                                       {eventType, castedPtr,
                                        ConstantInt::get(Type::getInt32Ty(Context), line)});
                  }
                }
                // For thread creation, log a fork event.
                else if (funcName == "pthread_create")
                {
                  Value *nullPtr = Constant::getNullValue(PointerType::get(Type::getInt8Ty(Context), 0));
                  Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), FORK_EVENT);
                  builder.CreateCall(logFunc,
                                     {eventType, nullPtr,
                                      ConstantInt::get(Type::getInt32Ty(Context), line)});
                }
                // For thread join, log a join event.
                else if (funcName == "pthread_join")
                {
                  Value *nullPtr = Constant::getNullValue(PointerType::get(Type::getInt8Ty(Context), 0));
                  Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), JOIN_EVENT);
                  builder.CreateCall(logFunc,
                                     {eventType, nullPtr,
                                      ConstantInt::get(Type::getInt32Ty(Context), line)});
                }
                // For explicit atomic block begin marker.
                else if (funcName == "atomic_begin")
                {
                  Value *nullPtr = Constant::getNullValue(PointerType::get(Type::getInt8Ty(Context), 0));
                  Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), ATOMIC_BEGIN_EVENT);
                  builder.CreateCall(logFunc,
                                     {eventType, nullPtr,
                                      ConstantInt::get(Type::getInt32Ty(Context), line)});
                }
                // For explicit atomic block end marker.
                else if (funcName == "atomic_end")
                {
                  Value *nullPtr = Constant::getNullValue(PointerType::get(Type::getInt8Ty(Context), 0));
                  Value *eventType = ConstantInt::get(Type::getInt32Ty(Context), ATOMIC_END_EVENT);
                  builder.CreateCall(logFunc,
                                     {eventType, nullPtr,
                                      ConstantInt::get(Type::getInt32Ty(Context), line)});
                }
              }
            }
          }
        }
      }
      return PreservedAnalyses::none();
    }
  };

} // end anonymous namespace

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