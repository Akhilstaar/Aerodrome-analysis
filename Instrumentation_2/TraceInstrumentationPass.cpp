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

namespace {
    struct TraceInstrumentationPass : public PassInfoMixin<TraceInstrumentationPass> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
        LLVMContext &Context = M.getContext();
        const DataLayout &DL = M.getDataLayout();

        FunctionType *PthreadSelfTy = FunctionType::get(Type::getInt64Ty(Context), false);
        FunctionCallee PthreadSelf = M.getOrInsertFunction("pthread_self", PthreadSelfTy);

        // functions for trace

        FunctionType *LogReadTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context),
            Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogRead = M.getOrInsertFunction("logRead", LogReadTy);

        FunctionType *LogWriteTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context),
            Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogWrite = M.getOrInsertFunction("logWrite", LogWriteTy);

        FunctionType *LogAcquireTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogAcquire = M.getOrInsertFunction("logAcquire", LogAcquireTy);

        FunctionType *LogReleaseTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), PointerType::get(Type::getInt8Ty(Context), 0), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogRelease = M.getOrInsertFunction("logRelease", LogReleaseTy);

        FunctionType *LogForkTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogFork = M.getOrInsertFunction("logFork", LogForkTy);

        FunctionType *LogJoinTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogJoin = M.getOrInsertFunction("logJoin", LogJoinTy);
        

        ///////////////not sure///////////////
        FunctionType *LogThreadEndTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogThreadEnd = M.getOrInsertFunction("logThreadEnd", LogThreadEndTy);

        ////////////not sure/////////////////

        FunctionType *LogTxnBeginTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogTxnBegin = M.getOrInsertFunction("logTxnBegin", LogTxnBeginTy);

        FunctionType *LogTxnEndTy = FunctionType::get(
            Type::getVoidTy(Context),
            {Type::getInt64Ty(Context), Type::getInt32Ty(Context)},
            false);
        FunctionCallee LogTxnEnd = M.getOrInsertFunction("logTxnEnd", LogTxnEndTy);

        for (Function &F : M) {
        if (F.isDeclaration()) continue;

        // txn_begin

        IRBuilder<> EntryBuilder(&F.getEntryBlock().front());
        Value *Tid = EntryBuilder.CreateCall(PthreadSelf);
        Tid = EntryBuilder.CreateIntCast(Tid, Type::getInt64Ty(Context), false);
        unsigned EntryLine = 0;
        if (DILocation *Loc = F.getEntryBlock().front().getDebugLoc()) {
            EntryLine = Loc->getLine();
        }
        Value *EntryLineVal = ConstantInt::get(Type::getInt32Ty(Context), EntryLine);
        EntryBuilder.CreateCall(LogTxnBegin, {Tid, EntryLineVal});

        //txn_end ???????????
        for (BasicBlock &BB : F) {
            if (ReturnInst *RI = dyn_cast<ReturnInst>(BB.getTerminator())) {
            IRBuilder<> ExitBuilder(RI);
            Value *ExitTid = ExitBuilder.CreateCall(PthreadSelf);
            ExitTid = ExitBuilder.CreateIntCast(ExitTid, Type::getInt64Ty(Context), false);
            unsigned ExitLine = EntryLine; 
            if (DILocation *Loc = RI->getDebugLoc()) {
                ExitLine = Loc->getLine();
            }
            Value *ExitLineVal = ConstantInt::get(Type::getInt32Ty(Context), ExitLine);

            // ye to mereko nhi pta maine kyon kara he
            if (F.getName() != "main") {
                ExitBuilder.CreateCall(LogThreadEnd, {ExitTid, ExitLineVal});
            }
            // ye ye............
            ExitBuilder.CreateCall(LogTxnEnd, {ExitTid, ExitLineVal});
            }
        }

        if (F.getName() == "main") {
            Value *ParentTid = ConstantInt::get(Type::getInt64Ty(Context), 0); 
            EntryBuilder.CreateCall(LogFork, {ParentTid, Tid, EntryLineVal});
        }

        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
            IRBuilder<> Builder(&I);

            Value *InstTid = Builder.CreateCall(PthreadSelf);
            InstTid = Builder.CreateIntCast(InstTid, Type::getInt64Ty(Context), false);

            unsigned Line = 0;
            if (DILocation *Loc = I.getDebugLoc()) {
                Line = Loc->getLine();
            }
            Value *LineVal = ConstantInt::get(Type::getInt32Ty(Context), Line);

            if (LoadInst *LI = dyn_cast<LoadInst>(&I)) {
                if (!LI->isAtomic()) {
                Value *Ptr = LI->getPointerOperand();
                uint64_t Size = DL.getTypeStoreSize(LI->getType());
                Value *CastedPtr = Builder.CreateBitCast(Ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                Builder.CreateCall(LogRead, {InstTid, CastedPtr, ConstantInt::get(Type::getInt32Ty(Context), Size), LineVal});
                }
            } else if (StoreInst *SI = dyn_cast<StoreInst>(&I)) {
                if (!SI->isAtomic()) {
                Value *Ptr = SI->getPointerOperand();
                uint64_t Size = DL.getTypeStoreSize(SI->getValueOperand()->getType());
                Value *CastedPtr = Builder.CreateBitCast(Ptr, PointerType::get(Type::getInt8Ty(Context), 0));
                Builder.CreateCall(LogWrite, {InstTid, CastedPtr, ConstantInt::get(Type::getInt32Ty(Context), Size), LineVal});
                }
            } else if (CallInst *CI = dyn_cast<CallInst>(&I)) {
                if (Function *Called = CI->getCalledFunction()) {
                StringRef Name = Called->getName();
                if (Name == "pthread_mutex_lock") {
                    Value *Lock = CI->getArgOperand(0);
                    Value *CastedLock = Builder.CreateBitCast(Lock, PointerType::get(Type::getInt8Ty(Context), 0));
                    Builder.CreateCall(LogAcquire, {InstTid, CastedLock, LineVal});
                } else if (Name == "pthread_mutex_unlock") {
                    Builder.SetInsertPoint(I.getNextNode()); 
                    Value *Lock = CI->getArgOperand(0);
                    Value *CastedLock = Builder.CreateBitCast(Lock, PointerType::get(Type::getInt8Ty(Context), 0));
                    Value *PostTid = Builder.CreateCall(PthreadSelf);
                    PostTid = Builder.CreateIntCast(PostTid, Type::getInt64Ty(Context), false);
                    Builder.CreateCall(LogRelease, {PostTid, CastedLock, LineVal});
                } else if (Name == "pthread_create") {
                    // Value *parentTID = tid; // Current thread is the parent ( ? )
                    // Value *threadArg = CI->getArgOperand(0);

                    // // Load child TID after pthread_create
                    // builder.SetInsertPoint(I->getNextNode());
                    // Value *childTID = builder.CreateLoad(Type::getInt64Ty(Context), threadArg);
                    // builder.CreateCall(logForkFunc, {parentTID, childTID, lineConstant});

                    //// thoda confuse hu me

                    Builder.SetInsertPoint(I.getNextNode()); 
                    Value *ChildTid = ConstantInt::get(Type::getInt64Ty(Context), 0);
                    Builder.CreateCall(LogFork, {InstTid, ChildTid, LineVal});
                    
                } else if (Name == "pthread_join") {
                    Value *ChildTid = CI->getArgOperand(0);
                    ChildTid = Builder.CreateIntCast(ChildTid, Type::getInt64Ty(Context), false);
                    Builder.CreateCall(LogJoin, {InstTid, ChildTid, LineVal});
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

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "TraceInstrumentationPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "trace-instr") {
                    MPM.addPass(TraceInstrumentationPass());
                    return true;
                  }
                  return false;
                });
          }};
}