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
  struct InstrumentationPass : public PassInfoMixin<InstrumentationPass>
  {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
      LLVMContext &Context = M.getContext();
      const DataLayout &dataLayout = M.getDataLayout();

      // For getting TID
      FunctionType *pthreadSelfType = FunctionType::get(Type::getInt64Ty(Context), false);
      FunctionCallee pthreadSelfFunc = M.getOrInsertFunction("pthread_self", pthreadSelfType);

      // Set up logging functions
      FunctionType *logReadType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReadFunc = M.getOrInsertFunction("logReadEvent", logReadType);

      FunctionType *logWriteType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context), Type::getInt32Ty(Context)},
          false);
      FunctionCallee logWriteFunc = M.getOrInsertFunction("logWriteEvent", logWriteType);

      FunctionType *logAcquireType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context)},
          false);
      FunctionCallee logAcquireFunc = M.getOrInsertFunction("logAcquireEvent", logAcquireType);

      FunctionType *logReleaseType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           PointerType::get(Type::getInt8Ty(Context), 0),
           Type::getInt32Ty(Context)},
          false);
      FunctionCallee logReleaseFunc = M.getOrInsertFunction("logReleaseEvent", logReleaseType);

      FunctionType *logForkType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           Type::getInt64Ty(Context),
           Type::getInt32Ty(Context)},
          false);
      FunctionCallee logForkFunc = M.getOrInsertFunction("logForkEvent", logForkType);

      FunctionType *logJoinType = FunctionType::get(
          Type::getVoidTy(Context),
          {Type::getInt64Ty(Context),
           Type::getInt32Ty(Context)},
          false);
      FunctionCallee logJoinFunc = M.getOrInsertFunction("logJoinEvent", logJoinType);

      // txn_begin/end instrumentation

      FunctionType *logTxnBeginType = FunctionType::get(
        Type::getVoidTy(Context),
        {Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
        false);
      FunctionCallee logTxnBeginFunc = M.getOrInsertFunction("logTxnBeginEvent", logTxnBeginType);

      FunctionType *logTxnEndType = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
      FunctionCallee logTxnEndFunc = M.getOrInsertFunction("logTxnEndEvent", logTxnEndType);

      // txn begin/end instrumentation
      // bool mainstarted = false;
      
      for (Function &F : M)
      {
        if (F.isDeclaration())
          continue;

        if (!F.getSubprogram())
        continue;
      
        // 2) Don’t instrument any of the logging / helper routines
        StringRef fname = F.getName();
        if (fname.starts_with("log") ||
            fname == "getLogFile" ||
            fname == "pthread_self")
          continue;
        // Instrument function entry (Txn Begin)
        // {
        //     IRBuilder<> builder(&*F.getEntryBlock().getFirstInsertionPt());
        //     Value *tid = builder.CreateCall(pthreadSelfFunc);
        //     tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);

        //     unsigned line = 0;
        //     if (DISubprogram *SP = F.getSubprogram())
        //         line = SP->getLine();
        //     Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);

        //     // Don't log transaction begin for main - it's handled specially
        //     if (F.getName() != "main") {
        //         builder.CreateCall(logTxnBeginFunc, {tid, lineConstant});
        //     }
        // }



        // Log main thread creation
        if (F.getName() == "main")
        {
          // mainstarted = true;
          IRBuilder<> builder(&*F.getEntryBlock().getFirstInsertionPt());
          Value *tid = builder.CreateCall(pthreadSelfFunc);
          tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);
          Value *parentTID = ConstantInt::get(Type::getInt64Ty(Context), 0LL);

          unsigned line = 0;
          if (DISubprogram *SP = F.getSubprogram())
            line = SP->getLine();

          Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);
          builder.CreateCall(logForkFunc, {parentTID, tid, lineConstant});
        }

        if (F.getName() != "main" ) {
          // Move after the first instruction to avoid static init issues
          if (!F.getEntryBlock().empty()) {
              auto &firstInst = *F.getEntryBlock().getFirstNonPHIOrDbgOrLifetime();
              IRBuilder<> builder(&firstInst);
              Value *tid = builder.CreateCall(pthreadSelfFunc);
              tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);
              
              unsigned line = 0;
              if (F.getSubprogram())
                line = F.getSubprogram()->getLine();

              Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);
              
              builder.CreateCall(logTxnBeginFunc, {tid, lineConstant});
          }

          for (BasicBlock &BB : F) {
            if (ReturnInst *RI = dyn_cast<ReturnInst>(BB.getTerminator())) {
                IRBuilder<> builder(RI);
                Value *tid = builder.CreateCall(pthreadSelfFunc);
                tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);
  
                unsigned line = 0;
                if (DILocation *Loc = RI->getDebugLoc())
                line = Loc->getLine();
                Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);
  
                builder.CreateCall(logTxnEndFunc, {tid, lineConstant});
            }
        }
      }

      // Instrument function exits (Txn End)
      

        for (BasicBlock &BB : F)
        {
          for (Instruction &I : BB)
          {
            IRBuilder<> builder(&I);
            Value *tid = builder.CreateCall(pthreadSelfFunc);
            tid = builder.CreateIntCast(tid, Type::getInt64Ty(Context), false);

            unsigned line = 0;
            if (DILocation *Loc = I.getDebugLoc())
              line = Loc->getLine();
            Value *lineConstant = ConstantInt::get(Type::getInt32Ty(Context), line);

            if (auto *loadInst = dyn_cast<LoadInst>(&I))
            {
              if (!loadInst->isAtomic())
              {
                Type *ty = loadInst->getType();
                Value *ptr = loadInst->getPointerOperand();
                uint64_t size = dataLayout.getTypeSizeInBits(ty) / 8;

                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logReadFunc, {tid, castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
              }
            }
            else if (auto *storeInst = dyn_cast<StoreInst>(&I))
            {
              if (!storeInst->isAtomic())
              {
                Value *ptr = storeInst->getPointerOperand();
                Value *storeValue = storeInst->getValueOperand();
                Type *storeType = storeValue->getType();
                uint64_t size = dataLayout.getTypeSizeInBits(storeType) / 8;

                Value *castedPtr = builder.CreateBitCast(ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                builder.CreateCall(logWriteFunc, {tid, castedPtr, ConstantInt::get(Type::getInt32Ty(Context), size), lineConstant});
              }
            }
            else if (auto *CI = dyn_cast<CallBase>(&I))
            {
              if (Function *called = CI->getCalledFunction())
              {
                StringRef funcName = called->getName();

                  if (funcName == "pthread_mutex_lock" && CI->arg_size() >= 1)
                  {
                    Instruction *Next = CI->getNextNode();
                    if (Next)
                    {
                      builder.SetInsertPoint(Next);
                      Value *mutexArg = CI->getArgOperand(0);
                      Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                      builder.CreateCall(logAcquireFunc, {tid, castedPtr, lineConstant});
                    }
                  }
                  else if (funcName == "pthread_mutex_unlock" && CI->arg_size() >= 1)
                  {
                    Value *mutexArg = CI->getArgOperand(0);
                    Value *castedPtr = builder.CreateBitCast(mutexArg, PointerType::get(Type::getInt8Ty(Context), 0));
                    builder.SetInsertPoint(CI); // before unlock.
                    builder.CreateCall(logReleaseFunc, {tid, castedPtr, lineConstant});
                  }
                else if (funcName == "pthread_create")
                {
                  Value *parentTID = tid;
                  Value *threadArg = CI->getArgOperand(0);

                  builder.SetInsertPoint(I.getNextNode());
                  Value *childTID = builder.CreateLoad(Type::getInt64Ty(Context), threadArg);
                  builder.CreateCall(logForkFunc, {parentTID, childTID, lineConstant});
                }
                else if (funcName == "pthread_join" && CI->arg_size() >= 1)
                {
                  Instruction *Next = CI->getNextNode();
                  if (Next)
                  {
                    builder.SetInsertPoint(Next);
                    Value *childTID = CI->getArgOperand(0);
                    childTID = builder.CreateIntCast(childTID, Type::getInt64Ty(Context), false);
                    builder.CreateCall(logJoinFunc, {childTID, lineConstant});
                  }
                }
                // TODO: Uncomment if atomic begin/end instrumentation is needed
                /*
                else if (funcName == "atomic_begin")
                {
                  builder.CreateCall(logAtomicBeginFunc, {lineConstant});
                }
                else if (funcName == "atomic_end")
                {
                  builder.CreateCall(logAtomicEndFunc, {lineConstant});
                }
                */
              }
            }
          }
        }
      }
      return PreservedAnalyses::none();
    }
  };
} // namespace

llvm::PassPluginLibraryInfo getInstrumentationPassPluginInfo()
{
  return {LLVM_PLUGIN_API_VERSION, "InstrumentationPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB)
          {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>)
                {
                  if (Name == "instr")
                  {
                    MPM.addPass(InstrumentationPass());
                    return true;
                  }
                  return false;
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo()
{
  return getInstrumentationPassPluginInfo();
}