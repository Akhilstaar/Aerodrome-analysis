; ModuleID = 'c_out.ll'
source_filename = "c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.std::thread::_State_impl" = type { %"struct.std::thread::_State", %"struct.std::thread::_Invoker" }
%"struct.std::thread::_State" = type { ptr }
%"struct.std::thread::_Invoker" = type { %"class.std::tuple.2" }
%"class.std::tuple.2" = type { %"struct.std::_Tuple_impl.3" }
%"struct.std::_Tuple_impl.3" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { ptr }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::__invoke_other" = type { i8 }

$_ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_ = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC2IJRS3_EEEDpOT_ = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev = comdat any

$_ZNSt6thread6_StateC2Ev = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC2IJRS2_EEEDpOT_ = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv = comdat any

$_ZNSt5tupleIJPFvvEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS1_EEEbE4typeELb1EEES6_ = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEEC2ERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_Head_baseILm0EPFvvELb0EEC2ERKS1_ = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE = comdat any

$_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_ = comdat any

$_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_ = comdat any

$_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_ = comdat any

$_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_ = comdat any

$_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_ = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_ = comdat any

$_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ETnNSt9enable_ifIXclsr17_TupleConstraintsIXT_ES2_S4_EE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev = comdat any

$_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev = comdat any

$_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_ = comdat any

$_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_ = comdat any

$_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_ = comdat any

$_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv = comdat any

$_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_ = comdat any

$_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_ = comdat any

$_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_ = comdat any

$_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_ = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = comdat any

@x = dso_local global i64 0, align 8, !dbg !0
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"World\00", align 1, !dbg !638
@.str.1 = private unnamed_addr constant [8 x i8] c"Hello, \00", align 1, !dbg !644
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = linkonce_odr dso_local constant [59 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTVNSt6thread6_StateE = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z6readerv() #0 !dbg !1575 {
  br label %1, !dbg !1576

1:                                                ; preds = %4, %0
  call void @logEvent(i32 0, ptr @x, i32 18), !dbg !1577
  %2 = load volatile i64, ptr @x, align 8, !dbg !1577
  %3 = icmp eq i64 %2, 0, !dbg !1578
  br i1 %3, label %4, label %5, !dbg !1576

4:                                                ; preds = %1
  br label %1, !dbg !1576, !llvm.loop !1579

5:                                                ; preds = %1
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1582
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1583
  ret void, !dbg !1584
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z6writerv() #0 !dbg !1585 {
  %1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !1586
  call void @logEvent(i32 1, ptr @x, i32 25), !dbg !1587
  store volatile i64 1, ptr @x, align 8, !dbg !1587
  ret void, !dbg !1588
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 personality ptr @__gxx_personality_v0 !dbg !1589 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::thread", align 8
  %3 = alloca %"class.std::thread", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @logEvent(i32 1, ptr %1, i32 0)
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1591
  call void @_ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_Z6writerv), !dbg !1591
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1592, metadata !DIExpression()), !dbg !1593
  invoke void @_ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_Z6readerv)
          to label %6 unwind label %10, !dbg !1593

6:                                                ; preds = %0
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %14, !dbg !1594

7:                                                ; preds = %6
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %14, !dbg !1595

8:                                                ; preds = %7
  call void @logEvent(i32 1, ptr %1, i32 35), !dbg !1596
  store i32 0, ptr %1, align 4, !dbg !1596
  call void @_ZNSt6threadD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1597
  call void @_ZNSt6threadD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11, !dbg !1597
  call void @logEvent(i32 0, ptr %1, i32 36), !dbg !1597
  %9 = load i32, ptr %1, align 4, !dbg !1597
  ret i32 %9, !dbg !1597

10:                                               ; preds = %0
  %11 = landingpad { ptr, i32 }
          cleanup, !dbg !1597
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !1597
  call void @logEvent(i32 1, ptr %4, i32 36), !dbg !1597
  store ptr %12, ptr %4, align 8, !dbg !1597
  %13 = extractvalue { ptr, i32 } %11, 1, !dbg !1597
  call void @logEvent(i32 1, ptr %5, i32 36), !dbg !1597
  store i32 %13, ptr %5, align 4, !dbg !1597
  br label %18, !dbg !1597

14:                                               ; preds = %7, %6
  %15 = landingpad { ptr, i32 }
          cleanup, !dbg !1597
  %16 = extractvalue { ptr, i32 } %15, 0, !dbg !1597
  call void @logEvent(i32 1, ptr %4, i32 36), !dbg !1597
  store ptr %16, ptr %4, align 8, !dbg !1597
  %17 = extractvalue { ptr, i32 } %15, 1, !dbg !1597
  call void @logEvent(i32 1, ptr %5, i32 36), !dbg !1597
  store i32 %17, ptr %5, align 4, !dbg !1597
  call void @_ZNSt6threadD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1597
  br label %18, !dbg !1597

18:                                               ; preds = %14, %10
  call void @_ZNSt6threadD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11, !dbg !1597
  br label %19, !dbg !1597

19:                                               ; preds = %18
  call void @logEvent(i32 0, ptr %4, i32 36), !dbg !1597
  %20 = load ptr, ptr %4, align 8, !dbg !1597
  call void @logEvent(i32 0, ptr %5, i32 36), !dbg !1597
  %21 = load i32, ptr %5, align 4, !dbg !1597
  %22 = insertvalue { ptr, i32 } poison, ptr %20, 0, !dbg !1597
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1, !dbg !1597
  resume { ptr, i32 } %23, !dbg !1597
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1598 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::unique_ptr", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1606, metadata !DIExpression()), !dbg !1608
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1609, metadata !DIExpression()), !dbg !1610
  call void @logEvent(i32 0, ptr %3, i32 0)
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %"class.std::thread", ptr %8, i32 0, i32 0, !dbg !1611
  call void @_ZNSt6thread2idC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #11, !dbg !1611
  %10 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #12, !dbg !1612, !heapallocsite !1614
  call void @logEvent(i32 0, ptr %4, i32 165), !dbg !1624
  %11 = load ptr, ptr %4, align 8, !dbg !1624
  invoke void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC2IJRS3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %11)
          to label %12 unwind label %14, !dbg !1625

12:                                               ; preds = %2
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10) #11, !dbg !1626
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %5, ptr noundef @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %13 unwind label %18, !dbg !1627

13:                                               ; preds = %12
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1627
  ret void, !dbg !1628

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup, !dbg !1629
  %16 = extractvalue { ptr, i32 } %15, 0, !dbg !1629
  call void @logEvent(i32 1, ptr %6, i32 167), !dbg !1629
  store ptr %16, ptr %6, align 8, !dbg !1629
  %17 = extractvalue { ptr, i32 } %15, 1, !dbg !1629
  call void @logEvent(i32 1, ptr %7, i32 167), !dbg !1629
  store i32 %17, ptr %7, align 4, !dbg !1629
  call void @_ZdlPv(ptr noundef %10) #13, !dbg !1612
  br label %22, !dbg !1612

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup, !dbg !1629
  %20 = extractvalue { ptr, i32 } %19, 0, !dbg !1629
  call void @logEvent(i32 1, ptr %6, i32 167), !dbg !1629
  store ptr %20, ptr %6, align 8, !dbg !1629
  %21 = extractvalue { ptr, i32 } %19, 1, !dbg !1629
  call void @logEvent(i32 1, ptr %7, i32 167), !dbg !1629
  store i32 %21, ptr %7, align 4, !dbg !1629
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1627
  br label %22, !dbg !1627

22:                                               ; preds = %18, %14
  call void @logEvent(i32 0, ptr %6, i32 164), !dbg !1612
  %23 = load ptr, ptr %6, align 8, !dbg !1612
  call void @logEvent(i32 0, ptr %7, i32 164), !dbg !1612
  %24 = load i32, ptr %7, align 4, !dbg !1612
  %25 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !1612
  %26 = insertvalue { ptr, i32 } %25, i32 %24, 1, !dbg !1612
  resume { ptr, i32 } %26, !dbg !1612
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1630 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1633
  br i1 %4, label %5, label %7, !dbg !1636

5:                                                ; preds = %1
  call void @_ZSt9terminatev() #14, !dbg !1637
  unreachable, !dbg !1637

6:                                                ; No predecessors!
  unreachable, !dbg !1640

7:                                                ; preds = %1
  ret void, !dbg !1641
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6thread8joinableEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1642 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::thread::id", align 8
  %4 = alloca %"class.std::thread::id", align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1643, metadata !DIExpression()), !dbg !1645
  call void @logEvent(i32 0, ptr %2, i32 0)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::thread", ptr %5, i32 0, i32 0, !dbg !1646
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 8, i1 false), !dbg !1646
  call void @_ZNSt6thread2idC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11, !dbg !1647
  %7 = getelementptr inbounds %"class.std::thread::id", ptr %3, i32 0, i32 0, !dbg !1648
  call void @logEvent(i32 0, ptr %7, i32 197), !dbg !1648
  %8 = load i64, ptr %7, align 8, !dbg !1648
  %9 = getelementptr inbounds %"class.std::thread::id", ptr %4, i32 0, i32 0, !dbg !1648
  call void @logEvent(i32 0, ptr %9, i32 197), !dbg !1648
  %10 = load i64, ptr %9, align 8, !dbg !1648
  %11 = call noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %8, i64 %10) #11, !dbg !1648
  %12 = xor i1 %11, true, !dbg !1649
  ret i1 %12, !dbg !1650
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %0, i64 %1) #4 comdat !dbg !1651 {
  %3 = alloca %"class.std::thread::id", align 8
  %4 = alloca %"class.std::thread::id", align 8
  %5 = getelementptr inbounds %"class.std::thread::id", ptr %3, i32 0, i32 0
  call void @logEvent(i32 1, ptr %5, i32 0)
  store i64 %0, ptr %5, align 8
  %6 = getelementptr inbounds %"class.std::thread::id", ptr %4, i32 0, i32 0
  call void @logEvent(i32 1, ptr %6, i32 0)
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1656, metadata !DIExpression()), !dbg !1657
  %7 = getelementptr inbounds %"class.std::thread::id", ptr %3, i32 0, i32 0, !dbg !1658
  call void @logEvent(i32 0, ptr %7, i32 330), !dbg !1658
  %8 = load i64, ptr %7, align 8, !dbg !1658
  %9 = getelementptr inbounds %"class.std::thread::id", ptr %4, i32 0, i32 0, !dbg !1659
  call void @logEvent(i32 0, ptr %9, i32 330), !dbg !1659
  %10 = load i64, ptr %9, align 8, !dbg !1659
  %11 = icmp eq i64 %8, %10, !dbg !1660
  ret i1 %11, !dbg !1661
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1662 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1663, metadata !DIExpression()), !dbg !1665
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::thread::id", ptr %3, i32 0, i32 0, !dbg !1666
  call void @logEvent(i32 1, ptr %4, i32 97), !dbg !1666
  store i64 0, ptr %4, align 8, !dbg !1666
  ret void, !dbg !1667
}

; Function Attrs: noreturn nounwind
declare void @_ZSt9terminatev() #6

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC2IJRS3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1668 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1676, metadata !DIExpression()), !dbg !1678
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @logEvent(i32 0, ptr %3, i32 0)
  %7 = load ptr, ptr %3, align 8
  call void @_ZNSt6thread6_StateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #11, !dbg !1681
  call void @logEvent(i32 1, ptr %7, i32 241), !dbg !1682
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, i32 0, inrange i32 0, i32 2), ptr %7, align 8, !dbg !1682
  %8 = getelementptr inbounds %"struct.std::thread::_State_impl", ptr %7, i32 0, i32 1, !dbg !1683
  call void @logEvent(i32 0, ptr %4, i32 240), !dbg !1684
  %9 = load ptr, ptr %4, align 8, !dbg !1684
  invoke void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC2IJRS2_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %9)
          to label %10 unwind label %11, !dbg !1683

10:                                               ; preds = %2
  ret void, !dbg !1685

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup, !dbg !1685
  %13 = extractvalue { ptr, i32 } %12, 0, !dbg !1685
  call void @logEvent(i32 1, ptr %5, i32 241), !dbg !1685
  store ptr %13, ptr %5, align 8, !dbg !1685
  %14 = extractvalue { ptr, i32 } %12, 1, !dbg !1685
  call void @logEvent(i32 1, ptr %6, i32 241), !dbg !1685
  store i32 %14, ptr %6, align 4, !dbg !1685
  call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #11, !dbg !1686
  br label %15, !dbg !1686

15:                                               ; preds = %11
  call void @logEvent(i32 0, ptr %5, i32 241), !dbg !1686
  %16 = load ptr, ptr %5, align 8, !dbg !1686
  call void @logEvent(i32 0, ptr %6, i32 241), !dbg !1686
  %17 = load i32, ptr %6, align 4, !dbg !1686
  %18 = insertvalue { ptr, i32 } poison, ptr %16, 0, !dbg !1686
  %19 = insertvalue { ptr, i32 } %18, i32 %17, 1, !dbg !1686
  resume { ptr, i32 } %19, !dbg !1686
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1688 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::unique_ptr", ptr %5, i32 0, i32 0, !dbg !1697
  call void @logEvent(i32 0, ptr %4, i32 318), !dbg !1698
  %7 = load ptr, ptr %4, align 8, !dbg !1698
  invoke void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7)
          to label %8 unwind label %9, !dbg !1697

8:                                                ; preds = %2
  ret void, !dbg !1699

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1697
  %11 = extractvalue { ptr, i32 } %10, 0, !dbg !1697
  call void @__clang_call_terminate(ptr %11) #14, !dbg !1697
  unreachable, !dbg !1697
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #4 comdat align 2 !dbg !1700 {
  ret void, !dbg !1701
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1702 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1703, metadata !DIExpression()), !dbg !1704
  call void @logEvent(i32 0, ptr %2, i32 0)
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1705, metadata !DIExpression()), !dbg !1707
  %5 = getelementptr inbounds %"class.std::unique_ptr", ptr %4, i32 0, i32 0, !dbg !1708
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1709
  call void @logEvent(i32 1, ptr %3, i32 402), !dbg !1707
  store ptr %6, ptr %3, align 8, !dbg !1707
  call void @logEvent(i32 0, ptr %3, i32 403), !dbg !1710
  %7 = load ptr, ptr %3, align 8, !dbg !1710
  call void @logEvent(i32 0, ptr %7, i32 403), !dbg !1710
  %8 = load ptr, ptr %7, align 8, !dbg !1710
  %9 = icmp ne ptr %8, null, !dbg !1712
  br i1 %9, label %10, label %15, !dbg !1713

10:                                               ; preds = %1
  %11 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11, !dbg !1714
  call void @logEvent(i32 0, ptr %3, i32 404), !dbg !1715
  %12 = load ptr, ptr %3, align 8, !dbg !1715
  call void @logEvent(i32 0, ptr %12, i32 404), !dbg !1716
  %13 = load ptr, ptr %12, align 8, !dbg !1716
  invoke void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %13)
          to label %14 unwind label %17, !dbg !1714

14:                                               ; preds = %10
  br label %15, !dbg !1714

15:                                               ; preds = %14, %1
  call void @logEvent(i32 0, ptr %3, i32 405), !dbg !1717
  %16 = load ptr, ptr %3, align 8, !dbg !1717
  call void @logEvent(i32 1, ptr %16, i32 405), !dbg !1718
  store ptr null, ptr %16, align 8, !dbg !1718
  ret void, !dbg !1719

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1714
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !1714
  call void @__clang_call_terminate(ptr %19) #14, !dbg !1714
  unreachable, !dbg !1714
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread6_StateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1720 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1725, metadata !DIExpression()), !dbg !1726
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  call void @logEvent(i32 1, ptr %3, i32 225), !dbg !1727
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVNSt6thread6_StateE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1727
  ret void, !dbg !1727
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC2IJRS2_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #4 comdat align 2 !dbg !1728 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1732, metadata !DIExpression()), !dbg !1734
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1735, metadata !DIExpression()), !dbg !1736
  call void @logEvent(i32 0, ptr %3, i32 0)
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"struct.std::thread::_Invoker", ptr %6, i32 0, i32 0, !dbg !1737
  call void @logEvent(i32 0, ptr %4, i32 277), !dbg !1738
  %8 = load ptr, ptr %4, align 8, !dbg !1738
  call void @logEvent(i32 1, ptr %5, i32 277), !dbg !1739
  store ptr %8, ptr %5, align 8, !dbg !1739
  call void @_ZNSt5tupleIJPFvvEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS1_EEEbE4typeELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1737
  ret void, !dbg !1740
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !1741 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1745
  ret void, !dbg !1747
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !1748 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1749, metadata !DIExpression()), !dbg !1750
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11, !dbg !1751
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !1751
  ret void, !dbg !1751
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !1752 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1753, metadata !DIExpression()), !dbg !1754
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::thread::_State_impl", ptr %3, i32 0, i32 1, !dbg !1755
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1755
  ret void, !dbg !1756
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPFvvEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS1_EEEbE4typeELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1757 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1763, metadata !DIExpression()), !dbg !1765
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1766, metadata !DIExpression()), !dbg !1767
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  call void @logEvent(i32 0, ptr %4, i32 876), !dbg !1768
  %6 = load ptr, ptr %4, align 8, !dbg !1768
  invoke void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %8, !dbg !1769

7:                                                ; preds = %2
  ret void, !dbg !1770

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1769
  %10 = extractvalue { ptr, i32 } %9, 0, !dbg !1769
  call void @__clang_call_terminate(ptr %10) #14, !dbg !1769
  unreachable, !dbg !1769
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPFvvEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !dbg !1771 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  call void @logEvent(i32 0, ptr %4, i32 508), !dbg !1777
  %6 = load ptr, ptr %4, align 8, !dbg !1777
  call void @_ZNSt10_Head_baseILm0EPFvvELb0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1778
  ret void, !dbg !1779
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #10 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPFvvELb0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !1780 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1784, metadata !DIExpression()), !dbg !1785
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Head_base.4", ptr %5, i32 0, i32 0, !dbg !1786
  call void @logEvent(i32 0, ptr %4, i32 194), !dbg !1787
  %7 = load ptr, ptr %4, align 8, !dbg !1787
  call void @logEvent(i32 0, ptr %7, i32 194), !dbg !1787
  %8 = load ptr, ptr %7, align 8, !dbg !1787
  call void @logEvent(i32 1, ptr %6, i32 194), !dbg !1786
  store ptr %8, ptr %6, align 8, !dbg !1786
  ret void, !dbg !1788
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1789 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Index_tuple", align 1
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1790, metadata !DIExpression()), !dbg !1791
  call void @logEvent(i32 0, ptr %2, i32 0)
  %4 = load ptr, ptr %2, align 8
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1792
  ret void, !dbg !1793
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1794 {
  %2 = alloca %"struct.std::_Index_tuple", align 1
  %3 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1806, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @logEvent(i32 0, ptr %3, i32 0)
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::thread::_Invoker", ptr %4, i32 0, i32 0, !dbg !1810
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1811
  call void @_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !1812
  ret void, !dbg !1813
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !435 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::__invoke_other", align 1
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1814, metadata !DIExpression()), !dbg !1815
  call void @logEvent(i32 0, ptr %2, i32 96), !dbg !1816
  %4 = load ptr, ptr %2, align 8, !dbg !1816
  call void @_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !1819 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1836
  call void @logEvent(i32 0, ptr %2, i32 1818), !dbg !1837
  %3 = load ptr, ptr %2, align 8, !dbg !1837
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1838
  ret ptr %4, !dbg !1839
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1840 {
  %2 = alloca %"struct.std::__invoke_other", align 1
  %3 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1846, metadata !DIExpression()), !dbg !1847
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1848, metadata !DIExpression()), !dbg !1849
  call void @logEvent(i32 0, ptr %3, i32 61), !dbg !1850
  %4 = load ptr, ptr %3, align 8, !dbg !1850
  call void @logEvent(i32 0, ptr %4, i32 61), !dbg !1851
  %5 = load ptr, ptr %4, align 8, !dbg !1851
  call void %5(), !dbg !1851
  ret void, !dbg !1852
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !1853 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1856, metadata !DIExpression()), !dbg !1857
  call void @logEvent(i32 0, ptr %2, i32 1788), !dbg !1858
  %3 = load ptr, ptr %2, align 8, !dbg !1858
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1859
  ret ptr %4, !dbg !1860
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1861 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !1863
  call void @logEvent(i32 0, ptr %2, i32 497), !dbg !1864
  %3 = load ptr, ptr %2, align 8, !dbg !1864
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1865
  ret ptr %4, !dbg !1866
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1867 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1868, metadata !DIExpression()), !dbg !1869
  call void @logEvent(i32 0, ptr %2, i32 234), !dbg !1870
  %3 = load ptr, ptr %2, align 8, !dbg !1870
  %4 = getelementptr inbounds %"struct.std::_Head_base.4", ptr %3, i32 0, i32 0, !dbg !1871
  ret ptr %4, !dbg !1872
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !dbg !1873 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1877, metadata !DIExpression()), !dbg !1879
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1880, metadata !DIExpression()), !dbg !1879
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  call void @logEvent(i32 0, ptr %4, i32 241), !dbg !1881
  %6 = load ptr, ptr %4, align 8, !dbg !1881
  call void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6), !dbg !1881
  ret void, !dbg !1881
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !dbg !1882 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1883, metadata !DIExpression()), !dbg !1885
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1886, metadata !DIExpression()), !dbg !1887
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__uniq_ptr_impl", ptr %5, i32 0, i32 0, !dbg !1888
  call void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ETnNSt9enable_ifIXclsr17_TupleConstraintsIXT_ES2_S4_EE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #11, !dbg !1888
  call void @logEvent(i32 0, ptr %4, i32 176), !dbg !1889
  %7 = load ptr, ptr %4, align 8, !dbg !1889
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11, !dbg !1891
  call void @logEvent(i32 1, ptr %8, i32 176), !dbg !1892
  store ptr %7, ptr %8, align 8, !dbg !1892
  ret void, !dbg !1893
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ETnNSt9enable_ifIXclsr17_TupleConstraintsIXT_ES2_S4_EE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1894 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  invoke void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %4 unwind label %5, !dbg !1903

4:                                                ; preds = %1
  ret void, !dbg !1904

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1903
  %7 = extractvalue { ptr, i32 } %6, 0, !dbg !1903
  call void @__clang_call_terminate(ptr %7) #14, !dbg !1903
  unreachable, !dbg !1903
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1905 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1906, metadata !DIExpression()), !dbg !1907
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", ptr %3, i32 0, i32 0, !dbg !1908
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(ptr noundef nonnull align 8 dereferenceable(8) %4) #11, !dbg !1909
  ret ptr %5, !dbg !1910
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !1911 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3), !dbg !1915
  call void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3), !dbg !1916
  ret void, !dbg !1917
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !dbg !1918 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3), !dbg !1922
  ret void, !dbg !1923
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1924 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base.1", ptr %3, i32 0, i32 0, !dbg !1928
  call void @logEvent(i32 1, ptr %4, i32 191), !dbg !1928
  store ptr null, ptr %4, align 8, !dbg !1928
  ret void, !dbg !1929
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !dbg !1930 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1934
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !1935 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1949, metadata !DIExpression()), !dbg !1950
  call void @logEvent(i32 0, ptr %2, i32 1804), !dbg !1951
  %3 = load ptr, ptr %2, align 8, !dbg !1951
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1952
  ret ptr %4, !dbg !1953
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !1954 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @logEvent(i32 0, ptr %2, i32 1788), !dbg !1959
  %3 = load ptr, ptr %2, align 8, !dbg !1959
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1960
  ret ptr %4, !dbg !1961
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1962 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1963, metadata !DIExpression()), !dbg !1964
  call void @logEvent(i32 0, ptr %2, i32 269), !dbg !1965
  %3 = load ptr, ptr %2, align 8, !dbg !1965
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !1966
  ret ptr %4, !dbg !1967
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1968 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @logEvent(i32 0, ptr %2, i32 234), !dbg !1971
  %3 = load ptr, ptr %2, align 8, !dbg !1971
  %4 = getelementptr inbounds %"struct.std::_Head_base.1", ptr %3, i32 0, i32 0, !dbg !1972
  ret ptr %4, !dbg !1973
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1974 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !1976
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", ptr %3, i32 0, i32 0, !dbg !1977
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11, !dbg !1978
  ret ptr %5, !dbg !1979
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #4 comdat align 2 !dbg !1980 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %3, i32 0)
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1981, metadata !DIExpression()), !dbg !1983
  call void @logEvent(i32 1, ptr %4, i32 0)
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1984, metadata !DIExpression()), !dbg !1985
  call void @logEvent(i32 0, ptr %3, i32 0)
  %5 = load ptr, ptr %3, align 8
  call void @logEvent(i32 0, ptr %4, i32 99), !dbg !1986
  %6 = load ptr, ptr %4, align 8, !dbg !1986
  %7 = icmp eq ptr %6, null, !dbg !1987
  br i1 %7, label %12, label %8, !dbg !1987

8:                                                ; preds = %2
  call void @logEvent(i32 0, ptr %6, i32 99), !dbg !1987
  %9 = load ptr, ptr %6, align 8, !dbg !1987
  %10 = getelementptr inbounds ptr, ptr %9, i64 1, !dbg !1987
  call void @logEvent(i32 0, ptr %10, i32 99), !dbg !1987
  %11 = load ptr, ptr %10, align 8, !dbg !1987
  call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6) #11, !dbg !1987
  br label %12, !dbg !1987

12:                                               ; preds = %8, %2
  ret void, !dbg !1988
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 !dbg !1989 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1990, metadata !DIExpression()), !dbg !1991
  call void @logEvent(i32 0, ptr %2, i32 0)
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", ptr %3, i32 0, i32 0, !dbg !1992
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(ptr noundef nonnull align 8 dereferenceable(8) %4) #11, !dbg !1993
  ret ptr %5, !dbg !1994
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat !dbg !1995 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2009, metadata !DIExpression()), !dbg !2010
  call void @logEvent(i32 0, ptr %2, i32 1804), !dbg !2011
  %3 = load ptr, ptr %2, align 8, !dbg !2011
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %3) #11, !dbg !2012
  ret ptr %4, !dbg !2013
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat !dbg !2014 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @logEvent(i32 0, ptr %2, i32 1788), !dbg !2018
  %3 = load ptr, ptr %2, align 8, !dbg !2018
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(ptr noundef nonnull align 1 dereferenceable(1) %3) #11, !dbg !2019
  ret ptr %4, !dbg !2020
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 !dbg !2021 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @logEvent(i32 0, ptr %2, i32 497), !dbg !2024
  %3 = load ptr, ptr %2, align 8, !dbg !2024
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(ptr noundef nonnull align 1 dereferenceable(1) %3) #11, !dbg !2025
  ret ptr %4, !dbg !2026
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 !dbg !2027 {
  %2 = alloca ptr, align 8
  call void @logEvent(i32 1, ptr %2, i32 0)
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @logEvent(i32 0, ptr %2, i32 125), !dbg !2030
  %3 = load ptr, ptr %2, align 8, !dbg !2030
  ret ptr %3, !dbg !2031
}

declare void @logEvent(i32, ptr, i32)

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573}
!llvm.ident = !{!1574}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 15, type: !1566, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731025043+3b5b5c1ec4a3-1~exp1~20240731145144.92)", isOptimized: false, flags: "/usr/lib/llvm-18/bin/clang -S -emit-llvm -g -O0 c.cpp -o c_out.ll", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !637, imports: !649, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "c.cpp", directory: "/home/aleatoryfreak/iitk/cs636/Aerodrome-analysis/Testing Code", checksumkind: CSK_MD5, checksum: "c7a6b7fcde8cf81933ceba380489007d")
!4 = !{!5, !433, !453, !503, !11, !7, !98, !95, !133, !92, !200, !89, !85, !82, !79, !75, !530, !564, !600, !628}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "_State_ptr", scope: !7, file: !6, line: 230, baseType: !75)
!6 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_thread.h", directory: "")
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !8, file: !6, line: 78, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9, identifier: "_ZTSSt6thread")
!8 = !DINamespace(name: "std", scope: null)
!9 = !{!10, !27, !31, !34, !35, !40, !44, !48, !51, !54, !59, !60, !61, !64, !67, !71}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "_M_id", scope: !7, file: !6, line: 123, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !7, file: !6, line: 92, size: 64, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !12, identifier: "_ZTSNSt6thread2idE")
!12 = !{!13, !20, !24}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_M_thread", scope: !11, file: !6, line: 94, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !7, file: !6, line: 82, baseType: !15, flags: DIFlagPublic)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gthread_t", file: !16, line: 47, baseType: !17)
!16 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/gthr-default.h", directory: "", checksumkind: CSK_MD5, checksum: "3b8e3be5a8b1d69cfdfb7aff03749ca6")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DISubprogram(name: "id", scope: !11, file: !6, line: 97, type: !21, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DISubprogram(name: "id", scope: !11, file: !6, line: 100, type: !25, scopeLine: 100, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !23, !14}
!27 = !DISubprogram(name: "thread", scope: !7, file: !6, line: 132, type: !28, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !7, file: !6, line: 143, type: !32, scopeLine: 143, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!32 = !DISubroutineType(types: !33)
!33 = !{null}
!34 = !DISubprogram(name: "~thread", scope: !7, file: !6, line: 170, type: !28, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!35 = !DISubprogram(name: "thread", scope: !7, file: !6, line: 176, type: !36, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !30, !38}
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!40 = !DISubprogram(name: "thread", scope: !7, file: !6, line: 178, type: !41, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !30, !43}
!43 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !7, size: 64)
!44 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSERKS_", scope: !7, file: !6, line: 181, type: !45, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !30, !38}
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!48 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSEOS_", scope: !7, file: !6, line: 183, type: !49, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!49 = !DISubroutineType(types: !50)
!50 = !{!47, !30, !43}
!51 = !DISubprogram(name: "swap", linkageName: "_ZNSt6thread4swapERS_", scope: !7, file: !6, line: 192, type: !52, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !30, !47}
!54 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !7, file: !6, line: 196, type: !55, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !58}
!57 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DISubprogram(name: "join", linkageName: "_ZNSt6thread4joinEv", scope: !7, file: !6, line: 200, type: !28, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubprogram(name: "detach", linkageName: "_ZNSt6thread6detachEv", scope: !7, file: !6, line: 203, type: !28, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt6thread6get_idEv", scope: !7, file: !6, line: 206, type: !62, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!11, !58}
!64 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt6thread13native_handleEv", scope: !7, file: !6, line: 212, type: !65, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!65 = !DISubroutineType(types: !66)
!66 = !{!14, !30}
!67 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt6thread20hardware_concurrencyEv", scope: !7, file: !6, line: 217, type: !68, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DISubprogram(name: "_M_start_thread", linkageName: "_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE", scope: !7, file: !6, line: 248, type: !72, scopeLine: 248, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !30, !5, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !8, file: !76, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !77, templateParams: !431, identifier: "_ZTSSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE")
!76 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/unique_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "b1c5f017599d59426bf764ae91a55ae0")
!77 = !{!78, !367, !372, !375, !379, !385, !397, !401, !402, !407, !412, !415, !418, !421, !424, !428}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !75, file: !76, line: 283, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<std::thread::_State, std::default_delete<std::thread::_State>, true, true>", scope: !8, file: !76, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !80, templateParams: !366, identifier: "_ZTSSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EE")
!80 = !{!81, !357, !362}
!81 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !79, baseType: !82, extraData: i32 0)
!82 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !8, file: !76, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !83, templateParams: !355, identifier: "_ZTSSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE")
!83 = !{!84, !311, !315, !325, !329, !333, !337, !342, !345, !348, !349, !352}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !82, file: !76, line: 232, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !8, file: !86, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !87, templateParams: !310, identifier: "_ZTSSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!86 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/tuple", directory: "")
!87 = !{!88, !279, !282, !288, !292, !302, !307}
!88 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !85, baseType: !89, flags: DIFlagPublic, extraData: i32 0)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !8, file: !86, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !90, templateParams: !275, identifier: "_ZTSSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!90 = !{!91, !199, !236, !240, !245, !250, !255, !259, !262, !265, !268, !272}
!91 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !89, baseType: !92, extraData: i32 0)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<std::thread::_State> >", scope: !8, file: !86, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !93, templateParams: !195, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE")
!93 = !{!94, !166, !170, !175, !179, !182, !185, !188, !192}
!94 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !92, baseType: !95, flags: DIFlagPrivate, extraData: i32 0)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<std::thread::_State>, true>", scope: !8, file: !86, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !96, templateParams: !162, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE")
!96 = !{!97, !113, !117, !121, !126, !130, !154, !159}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !95, file: !86, line: 130, baseType: !98, size: 8)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::thread::_State>", scope: !8, file: !76, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !99, templateParams: !111, identifier: "_ZTSSt14default_deleteINSt6thread6_StateEE")
!99 = !{!100, !104}
!100 = !DISubprogram(name: "default_delete", scope: !98, file: !76, line: 78, type: !101, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !98, file: !76, line: 93, type: !105, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !109}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_State", scope: !7, file: !6, line: 225, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!111 = !{!112}
!112 = !DITemplateTypeParameter(name: "_Tp", type: !110)
!113 = !DISubprogram(name: "_Head_base", scope: !95, file: !86, line: 81, type: !114, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = !DISubprogram(name: "_Head_base", scope: !95, file: !86, line: 84, type: !118, scopeLine: 84, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !116, !120}
!120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 64)
!121 = !DISubprogram(name: "_Head_base", scope: !95, file: !86, line: 87, type: !122, scopeLine: 87, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !116, !124}
!124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!126 = !DISubprogram(name: "_Head_base", scope: !95, file: !86, line: 88, type: !127, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !116, !129}
!129 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !95, size: 64)
!130 = !DISubprogram(name: "_Head_base", scope: !95, file: !86, line: 95, type: !131, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !116, !133, !140}
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !8, file: !134, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !135, identifier: "_ZTSSt15allocator_arg_t")
!134 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/uses_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "b01b32a4ec45141c6560fe4cff32653a")
!135 = !{!136}
!136 = !DISubprogram(name: "allocator_arg_t", scope: !133, file: !134, line: 56, type: !137, scopeLine: 56, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !8, file: !134, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !141, identifier: "_ZTSSt13__uses_alloc0")
!141 = !{!142, !145}
!142 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !140, baseType: !143, extraData: i32 0)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !8, file: !134, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !144, identifier: "_ZTSSt17__uses_alloc_base")
!144 = !{}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_M_a", scope: !140, file: !134, line: 81, baseType: !146, size: 8)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !140, file: !134, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !147, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!147 = !{!148}
!148 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__uses_alloc05_SinkaSEPKv", scope: !146, file: !134, line: 81, type: !149, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151, !152}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!154 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !95, file: !86, line: 125, type: !155, scopeLine: 125, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !98, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 64)
!159 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERKS4_", scope: !95, file: !86, line: 128, type: !160, scopeLine: 128, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!120, !124}
!162 = !{!163, !164, !165}
!163 = !DITemplateValueParameter(name: "_Idx", type: !19, value: i64 1)
!164 = !DITemplateTypeParameter(name: "_Head", type: !98)
!165 = !DITemplateValueParameter(type: !57, defaulted: true, value: i1 true)
!166 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !92, file: !86, line: 497, type: !167, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!157, !169}
!169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !92, size: 64)
!170 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERKS4_", scope: !92, file: !86, line: 500, type: !171, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!120, !173}
!173 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!175 = !DISubprogram(name: "_Tuple_impl", scope: !92, file: !86, line: 503, type: !176, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DISubprogram(name: "_Tuple_impl", scope: !92, file: !86, line: 507, type: !180, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !178, !120}
!182 = !DISubprogram(name: "_Tuple_impl", scope: !92, file: !86, line: 517, type: !183, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !178, !173}
!185 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEaSERKS4_", scope: !92, file: !86, line: 521, type: !186, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!186 = !DISubroutineType(types: !187)
!187 = !{!169, !178, !173}
!188 = !DISubprogram(name: "_Tuple_impl", scope: !92, file: !86, line: 527, type: !189, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !178, !191}
!191 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !92, size: 64)
!192 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_swapERS4_", scope: !92, file: !86, line: 666, type: !193, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !178, !169}
!195 = !{!163, !196}
!196 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !197)
!197 = !{!198}
!198 = !DITemplateTypeParameter(type: !98)
!199 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !89, baseType: !200, flags: DIFlagPrivate, extraData: i32 0)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, std::thread::_State *, false>", scope: !8, file: !86, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !201, templateParams: !232, identifier: "_ZTSSt10_Head_baseILm0EPNSt6thread6_StateELb0EE")
!201 = !{!202, !203, !207, !212, !217, !221, !224, !229}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !200, file: !86, line: 239, baseType: !109, size: 64)
!203 = !DISubprogram(name: "_Head_base", scope: !200, file: !86, line: 190, type: !204, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DISubprogram(name: "_Head_base", scope: !200, file: !86, line: 193, type: !208, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !206, !210}
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!212 = !DISubprogram(name: "_Head_base", scope: !200, file: !86, line: 196, type: !213, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !206, !215}
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!217 = !DISubprogram(name: "_Head_base", scope: !200, file: !86, line: 197, type: !218, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !206, !220}
!220 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !200, size: 64)
!221 = !DISubprogram(name: "_Head_base", scope: !200, file: !86, line: 204, type: !222, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !206, !133, !140}
!224 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !200, file: !86, line: 234, type: !225, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !200, size: 64)
!229 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERKS3_", scope: !200, file: !86, line: 237, type: !230, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!210, !215}
!232 = !{!233, !234, !235}
!233 = !DITemplateValueParameter(name: "_Idx", type: !19, value: i64 0)
!234 = !DITemplateTypeParameter(name: "_Head", type: !109)
!235 = !DITemplateValueParameter(type: !57, defaulted: true, value: i1 false)
!236 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !89, file: !86, line: 269, type: !237, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!227, !239}
!239 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !89, size: 64)
!240 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERKS5_", scope: !89, file: !86, line: 272, type: !241, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!210, !243}
!243 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!245 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERS5_", scope: !89, file: !86, line: 275, type: !246, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !239}
!248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !89, file: !86, line: 265, baseType: !92)
!250 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERKS5_", scope: !89, file: !86, line: 278, type: !251, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !243}
!253 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!255 = !DISubprogram(name: "_Tuple_impl", scope: !89, file: !86, line: 280, type: !256, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!259 = !DISubprogram(name: "_Tuple_impl", scope: !89, file: !86, line: 284, type: !260, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !258, !210, !120}
!262 = !DISubprogram(name: "_Tuple_impl", scope: !89, file: !86, line: 296, type: !263, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !258, !243}
!265 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !89, file: !86, line: 300, type: !266, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!266 = !DISubroutineType(types: !267)
!267 = !{!239, !258, !243}
!268 = !DISubprogram(name: "_Tuple_impl", scope: !89, file: !86, line: 302, type: !269, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !258, !271}
!271 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !89, size: 64)
!272 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_swapERS5_", scope: !89, file: !86, line: 469, type: !273, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !258, !239}
!275 = !{!233, !276}
!276 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !277)
!277 = !{!278, !198}
!278 = !DITemplateTypeParameter(type: !109)
!279 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE31__nothrow_default_constructibleEv", scope: !85, file: !86, line: 1293, type: !280, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!57}
!282 = !DISubprogram(name: "tuple", scope: !85, file: !86, line: 1356, type: !283, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !285, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!286 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!288 = !DISubprogram(name: "tuple", scope: !85, file: !86, line: 1358, type: !289, scopeLine: 1358, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !285, !291}
!291 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !85, size: 64)
!292 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !85, file: !86, line: 1619, type: !293, scopeLine: 1619, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !285, !296}
!295 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *const &, const std::default_delete<std::thread::_State> &>(), const tuple<_State *, default_delete<_State> > &, const __nonesuch &>", scope: !8, file: !297, line: 134, baseType: !298)
!297 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &, const std::__nonesuch &>", scope: !299, file: !297, line: 122, baseType: !286)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !8, file: !297, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !300, identifier: "_ZTSSt13__conditionalILb1EE")
!300 = !{!301}
!301 = !DITemplateValueParameter(type: !57, value: i1 true)
!302 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSEOS5_", scope: !85, file: !86, line: 1630, type: !303, scopeLine: 1630, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!295, !285, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *, std::default_delete<std::thread::_State> >(), tuple<_State *, default_delete<_State> > &&, __nonesuch &&>", scope: !8, file: !297, line: 134, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &&, std::__nonesuch &&>", scope: !299, file: !297, line: 122, baseType: !291)
!307 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE4swapERS5_", scope: !85, file: !86, line: 1745, type: !308, scopeLine: 1745, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !285, !295}
!310 = !{!276}
!311 = !DISubprogram(name: "__uniq_ptr_impl", scope: !82, file: !76, line: 174, type: !312, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!315 = !DISubprogram(name: "__uniq_ptr_impl", scope: !82, file: !76, line: 176, type: !316, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !314, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !82, file: !76, line: 168, baseType: !319, flags: DIFlagPublic)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !320, file: !76, line: 153, baseType: !109)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<std::thread::_State, std::default_delete<std::thread::_State>, void>", scope: !82, file: !76, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !321, identifier: "_ZTSNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4_PtrIS1_S3_vEE")
!321 = !{!322, !323, !324}
!322 = !DITemplateTypeParameter(name: "_Up", type: !110)
!323 = !DITemplateTypeParameter(name: "_Ep", type: !98)
!324 = !DITemplateTypeParameter(type: null, defaulted: true)
!325 = !DISubprogram(name: "__uniq_ptr_impl", scope: !82, file: !76, line: 184, type: !326, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !314, !328}
!328 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !82, size: 64)
!329 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !82, file: !76, line: 189, type: !330, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !314, !328}
!332 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !82, size: 64)
!333 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !82, file: !76, line: 197, type: !334, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !314}
!336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !318, size: 64)
!337 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !82, file: !76, line: 199, type: !338, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!318, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!342 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !82, file: !76, line: 201, type: !343, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{!157, !314}
!345 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !82, file: !76, line: 203, type: !346, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!120, !340}
!348 = !DISubprogram(name: "reset", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !82, file: !76, line: 206, type: !316, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!349 = !DISubprogram(name: "release", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !82, file: !76, line: 215, type: !350, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!318, !314}
!352 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !82, file: !76, line: 224, type: !353, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !314, !332}
!355 = !{!112, !356}
!356 = !DITemplateTypeParameter(name: "_Dp", type: !98)
!357 = !DISubprogram(name: "__uniq_ptr_data", scope: !79, file: !76, line: 242, type: !358, scopeLine: 242, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360, !361}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!361 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !79, size: 64)
!362 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EEaSEOS4_", scope: !79, file: !76, line: 243, type: !363, scopeLine: 243, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !360, !361}
!365 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !79, size: 64)
!366 = !{!112, !356, !165, !165}
!367 = !DISubprogram(name: "unique_ptr", scope: !75, file: !76, line: 366, type: !368, scopeLine: 366, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370, !371}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!371 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !75, size: 64)
!372 = !DISubprogram(name: "~unique_ptr", scope: !75, file: !76, line: 398, type: !373, scopeLine: 398, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !370}
!375 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !75, file: !76, line: 414, type: !376, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !370, !371}
!378 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !75, size: 64)
!379 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEDn", scope: !75, file: !76, line: 440, type: !380, scopeLine: 440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!380 = !DISubroutineType(types: !381)
!381 = !{!378, !370, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !8, file: !383, line: 312, baseType: !384)
!383 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!384 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!385 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEdeEv", scope: !75, file: !76, line: 451, type: !386, scopeLine: 451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !395}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !389, file: !297, line: 1630, baseType: !390)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::thread::_State>", scope: !8, file: !297, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !111, identifier: "_ZTSSt20add_lvalue_referenceINSt6thread6_StateEE")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__add_lval_ref_t<std::thread::_State>", scope: !8, file: !297, line: 1071, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !392, file: !297, line: 1068, baseType: !394)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<std::thread::_State, void>", scope: !8, file: !297, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !393, identifier: "_ZTSSt29__add_lvalue_reference_helperINSt6thread6_StateEvE")
!393 = !{!112, !324}
!394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !110, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!397 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEptEv", scope: !75, file: !76, line: 460, type: !398, scopeLine: 460, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubroutineType(types: !399)
!399 = !{!400, !395}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !75, file: !76, line: 286, baseType: !318, flags: DIFlagPublic)
!401 = !DISubprogram(name: "get", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE3getEv", scope: !75, file: !76, line: 469, type: !398, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!402 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !75, file: !76, line: 475, type: !403, scopeLine: 475, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !370}
!405 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !75, file: !76, line: 288, baseType: !98, flags: DIFlagPublic)
!407 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !75, file: !76, line: 481, type: !408, scopeLine: 481, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !395}
!410 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!412 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEcvbEv", scope: !75, file: !76, line: 486, type: !413, scopeLine: 486, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!57, !395}
!415 = !DISubprogram(name: "release", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !75, file: !76, line: 494, type: !416, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!400, !370}
!418 = !DISubprogram(name: "reset", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !75, file: !76, line: 505, type: !419, scopeLine: 505, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !370, !400}
!421 = !DISubprogram(name: "swap", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !75, file: !76, line: 515, type: !422, scopeLine: 515, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !370, !378}
!424 = !DISubprogram(name: "unique_ptr", scope: !75, file: !76, line: 522, type: !425, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !370, !427}
!427 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !396, size: 64)
!428 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSERKS4_", scope: !75, file: !76, line: 523, type: !429, scopeLine: 523, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!429 = !DISubroutineType(types: !430)
!430 = !{!378, !370, !427}
!431 = !{!112, !432}
!432 = !DITemplateTypeParameter(name: "_Dp", type: !98, defaulted: true)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !435, file: !434, line: 95, baseType: !446)
!434 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/invoke.h", directory: "")
!435 = distinct !DISubprogram(name: "__invoke<void (*)()>", linkageName: "_ZSt8__invokeIPFvvEJEENSt15__invoke_resultIT_JDpT0_EE4typeEOS3_DpOS4_", scope: !8, file: !434, line: 90, type: !436, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !443, retainedNodes: !144)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !442}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !439, file: !297, line: 2258, baseType: null)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<void>", scope: !8, file: !297, line: 2257, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !440, identifier: "_ZTSSt14__success_typeIvE")
!440 = !{!441}
!441 = !DITemplateTypeParameter(name: "_Tp", type: null)
!442 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !74, size: 64)
!443 = !{!444, !445}
!444 = !DITemplateTypeParameter(name: "_Callable", type: !74)
!445 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !144)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__invoke_type", scope: !447, file: !297, line: 2411, baseType: !452)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__result_of_success<void, std::__invoke_other>", scope: !8, file: !297, line: 2410, size: 8, flags: DIFlagTypePassByValue, elements: !448, templateParams: !450, identifier: "_ZTSSt19__result_of_successIvSt14__invoke_otherE")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !447, baseType: !439, extraData: i32 0)
!450 = !{!441, !451}
!451 = !DITemplateTypeParameter(name: "_Tag", type: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__invoke_other", scope: !8, file: !297, line: 2406, size: 8, flags: DIFlagTypePassByValue, elements: !144, identifier: "_ZTSSt14__invoke_other")
!453 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__mutex_base", scope: !8, file: !454, line: 59, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !455, identifier: "_ZTSSt12__mutex_base")
!454 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_mutex.h", directory: "")
!455 = !{!456, !490, !494, !499}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_M_mutex", scope: !453, file: !454, line: 65, baseType: !457, size: 320, flags: DIFlagProtected)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__native_type", scope: !453, file: !454, line: 62, baseType: !458, flags: DIFlagProtected)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gthread_mutex_t", file: !16, line: 50, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !18, line: 72, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !461, identifier: "_ZTS15pthread_mutex_t")
!461 = !{!462, !483, !488}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !460, file: !18, line: 69, baseType: !463, size: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !464, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !465, identifier: "_ZTS17__pthread_mutex_s")
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "6b075eca9ab0e2d761b2afc4ecfab776")
!465 = !{!466, !468, !469, !470, !471, !472, !474, !475}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !463, file: !464, line: 24, baseType: !467, size: 32)
!467 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !463, file: !464, line: 25, baseType: !70, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !463, file: !464, line: 26, baseType: !467, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !463, file: !464, line: 28, baseType: !70, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !463, file: !464, line: 32, baseType: !467, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !463, file: !464, line: 34, baseType: !473, size: 16, offset: 160)
!473 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !463, file: !464, line: 35, baseType: !473, size: 16, offset: 176)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !463, file: !464, line: 36, baseType: !476, size: 128, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !477, line: 55, baseType: !478)
!477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "b9a7199822bce372686baacd32a9f4f3")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !477, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !479, identifier: "_ZTS23__pthread_internal_list")
!479 = !{!480, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !478, file: !477, line: 53, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !478, file: !477, line: 54, baseType: !481, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !460, file: !18, line: 70, baseType: !484, size: 320)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 320, elements: !486)
!485 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!486 = !{!487}
!487 = !DISubrange(count: 40)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !460, file: !18, line: 71, baseType: !489, size: 64)
!489 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!490 = !DISubprogram(name: "__mutex_base", scope: !453, file: !454, line: 67, type: !491, scopeLine: 67, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!494 = !DISubprogram(name: "__mutex_base", scope: !453, file: !454, line: 80, type: !495, scopeLine: 80, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !493, !497}
!497 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!499 = !DISubprogram(name: "operator=", linkageName: "_ZNSt12__mutex_baseaSERKS_", scope: !453, file: !454, line: 81, type: !500, scopeLine: 81, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !493, !497}
!502 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !453, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "mutex", scope: !8, file: !454, line: 96, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !504, identifier: "_ZTSSt5mutex")
!504 = !{!505, !506, !510, !511, !516, !520, !521, !524, !525}
!505 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !503, baseType: !453, extraData: i32 0)
!506 = !DISubprogram(name: "mutex", scope: !503, file: !454, line: 104, type: !507, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!510 = !DISubprogram(name: "~mutex", scope: !503, file: !454, line: 105, type: !507, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!511 = !DISubprogram(name: "mutex", scope: !503, file: !454, line: 107, type: !512, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !509, !514}
!514 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!516 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5mutexaSERKS_", scope: !503, file: !454, line: 108, type: !517, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !509, !514}
!519 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !503, size: 64)
!520 = !DISubprogram(name: "lock", linkageName: "_ZNSt5mutex4lockEv", scope: !503, file: !454, line: 111, type: !507, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubprogram(name: "try_lock", linkageName: "_ZNSt5mutex8try_lockEv", scope: !503, file: !454, line: 122, type: !522, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!57, !509}
!524 = !DISubprogram(name: "unlock", linkageName: "_ZNSt5mutex6unlockEv", scope: !503, file: !454, line: 129, type: !507, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!525 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt5mutex13native_handleEv", scope: !503, file: !454, line: 136, type: !526, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !509}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !503, file: !454, line: 99, baseType: !529, flags: DIFlagPublic)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, void (*)(), false>", scope: !8, file: !86, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !531, templateParams: !562, identifier: "_ZTSSt10_Head_baseILm0EPFvvELb0EE")
!531 = !{!532, !533, !537, !542, !547, !551, !554, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !530, file: !86, line: 239, baseType: !74, size: 64)
!533 = !DISubprogram(name: "_Head_base", scope: !530, file: !86, line: 190, type: !534, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!537 = !DISubprogram(name: "_Head_base", scope: !530, file: !86, line: 193, type: !538, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !536, !540}
!540 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!542 = !DISubprogram(name: "_Head_base", scope: !530, file: !86, line: 196, type: !543, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !536, !545}
!545 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!547 = !DISubprogram(name: "_Head_base", scope: !530, file: !86, line: 197, type: !548, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !536, !550}
!550 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !530, size: 64)
!551 = !DISubprogram(name: "_Head_base", scope: !530, file: !86, line: 204, type: !552, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !536, !133, !140}
!554 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_", scope: !530, file: !86, line: 234, type: !555, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !74, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !530, size: 64)
!559 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERKS2_", scope: !530, file: !86, line: 237, type: !560, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!540, !545}
!562 = !{!233, !563, !235}
!563 = !DITemplateTypeParameter(name: "_Head", type: !74)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, void (*)()>", scope: !8, file: !86, line: 489, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !565, templateParams: !596, identifier: "_ZTSSt11_Tuple_implILm0EJPFvvEEE")
!565 = !{!566, !567, !571, !576, !580, !583, !586, !589, !593}
!566 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !564, baseType: !530, flags: DIFlagPrivate, extraData: i32 0)
!567 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_", scope: !564, file: !86, line: 497, type: !568, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!557, !570}
!570 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !564, size: 64)
!571 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERKS2_", scope: !564, file: !86, line: 500, type: !572, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!540, !574}
!574 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!576 = !DISubprogram(name: "_Tuple_impl", scope: !564, file: !86, line: 503, type: !577, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!580 = !DISubprogram(name: "_Tuple_impl", scope: !564, file: !86, line: 507, type: !581, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !579, !540}
!583 = !DISubprogram(name: "_Tuple_impl", scope: !564, file: !86, line: 517, type: !584, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !579, !574}
!586 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEEaSERKS2_", scope: !564, file: !86, line: 521, type: !587, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!587 = !DISubroutineType(types: !588)
!588 = !{!570, !579, !574}
!589 = !DISubprogram(name: "_Tuple_impl", scope: !564, file: !86, line: 527, type: !590, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !579, !592}
!592 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !564, size: 64)
!593 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_swapERS2_", scope: !564, file: !86, line: 666, type: !594, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !579, !570}
!596 = !{!233, !597}
!597 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !598)
!598 = !{!599}
!599 = !DITemplateTypeParameter(type: !74)
!600 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<void (*)()>", scope: !8, file: !86, line: 746, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !601, templateParams: !627, identifier: "_ZTSSt5tupleIJPFvvEEE")
!601 = !{!602, !603, !609, !613, !619, !624}
!602 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !600, baseType: !564, flags: DIFlagPublic, extraData: i32 0)
!603 = !DISubprogram(name: "tuple", scope: !600, file: !86, line: 901, type: !604, scopeLine: 901, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !606, !607}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!607 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!609 = !DISubprogram(name: "tuple", scope: !600, file: !86, line: 903, type: !610, scopeLine: 903, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !606, !612}
!612 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !600, size: 64)
!613 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvvEEEaSERKS2_", scope: !600, file: !86, line: 1101, type: !614, scopeLine: 1101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !606, !617}
!616 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !600, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*const &)()>(), const tuple<void (*)()> &, const __nonesuch &>", scope: !8, file: !297, line: 134, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<void (*)()> &, const std::__nonesuch &>", scope: !299, file: !297, line: 122, baseType: !607)
!619 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvvEEEaSEOS2_", scope: !600, file: !86, line: 1112, type: !620, scopeLine: 1112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!616, !606, !622}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*)()>(), tuple<void (*)()> &&, __nonesuch &&>", scope: !8, file: !297, line: 134, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<void (*)()> &&, std::__nonesuch &&>", scope: !299, file: !297, line: 122, baseType: !612)
!624 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPFvvEEE4swapERS2_", scope: !600, file: !86, line: 1182, type: !625, scopeLine: 1182, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !606, !616}
!627 = !{!597}
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Invoker<std::tuple<void (*)()> >", scope: !7, file: !6, line: 272, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !629, templateParams: !635, identifier: "_ZTSNSt6thread8_InvokerISt5tupleIJPFvvEEEEE")
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !628, file: !6, line: 280, baseType: !600, size: 64)
!631 = !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv", scope: !628, file: !6, line: 295, type: !632, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!438, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!635 = !{!636}
!636 = !DITemplateTypeParameter(name: "_Tuple", type: !600)
!637 = !{!0, !638, !644}
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !3, line: 20, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 48, elements: !642)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!642 = !{!643}
!643 = !DISubrange(count: 6)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 64, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 8)
!649 = !{!650, !657, !660, !663, !666, !669, !671, !673, !675, !679, !682, !685, !688, !691, !693, !698, !702, !705, !708, !710, !712, !714, !716, !719, !722, !725, !728, !731, !733, !739, !743, !749, !751, !758, !762, !764, !770, !774, !778, !786, !788, !792, !796, !800, !805, !809, !813, !817, !821, !829, !833, !837, !839, !843, !847, !851, !857, !861, !865, !867, !875, !879, !887, !889, !893, !897, !901, !905, !910, !915, !920, !921, !922, !923, !925, !926, !927, !928, !929, !930, !931, !948, !951, !956, !964, !969, !973, !977, !981, !985, !987, !989, !993, !999, !1003, !1009, !1015, !1017, !1021, !1025, !1029, !1033, !1044, !1046, !1050, !1054, !1058, !1060, !1064, !1068, !1072, !1074, !1076, !1080, !1088, !1092, !1096, !1100, !1102, !1108, !1110, !1116, !1120, !1124, !1128, !1132, !1136, !1140, !1142, !1144, !1148, !1152, !1156, !1158, !1162, !1166, !1168, !1170, !1174, !1178, !1182, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1204, !1209, !1213, !1217, !1222, !1226, !1228, !1230, !1232, !1234, !1236, !1238, !1240, !1242, !1244, !1246, !1248, !1250, !1252, !1256, !1260, !1266, !1271, !1275, !1277, !1279, !1281, !1283, !1290, !1294, !1298, !1302, !1306, !1310, !1315, !1319, !1321, !1325, !1331, !1335, !1340, !1342, !1344, !1348, !1352, !1354, !1356, !1358, !1360, !1364, !1366, !1368, !1372, !1376, !1380, !1384, !1388, !1392, !1394, !1398, !1402, !1406, !1410, !1412, !1414, !1418, !1422, !1423, !1424, !1425, !1426, !1427, !1435, !1441, !1444, !1445, !1447, !1449, !1451, !1453, !1457, !1459, !1461, !1463, !1465, !1467, !1469, !1471, !1473, !1477, !1481, !1483, !1487, !1491, !1496, !1500, !1501, !1506, !1510, !1515, !1520, !1524, !1530, !1534, !1536, !1540, !1547, !1552, !1557, !1564, !1565}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !651, file: !656, line: 51)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !652, line: 24, baseType: !653)
!652 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "649b383a60bfa3eb90e85840b2b0be20")
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !654, line: 37, baseType: !655)
!654 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!655 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!656 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !658, file: !656, line: 52)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !652, line: 25, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !654, line: 39, baseType: !473)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !661, file: !656, line: 53)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !652, line: 26, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !654, line: 41, baseType: !467)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !664, file: !656, line: 54)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !652, line: 27, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !654, line: 44, baseType: !489)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !667, file: !656, line: 56)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !668, line: 47, baseType: !655)
!668 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "bfb03fa9c46a839e35c32b929fbdbb8e")
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !670, file: !656, line: 57)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !668, line: 49, baseType: !489)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !672, file: !656, line: 58)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !668, line: 50, baseType: !489)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !674, file: !656, line: 59)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !668, line: 51, baseType: !489)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !676, file: !656, line: 61)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !677, line: 25, baseType: !678)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-least.h", directory: "", checksumkind: CSK_MD5, checksum: "a866be81c480920b0293bd5f6336a0a3")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !654, line: 52, baseType: !653)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !680, file: !656, line: 62)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !677, line: 26, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !654, line: 54, baseType: !659)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !683, file: !656, line: 63)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !677, line: 27, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !654, line: 56, baseType: !662)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !686, file: !656, line: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !677, line: 28, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !654, line: 58, baseType: !665)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !689, file: !656, line: 66)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !668, line: 90, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !654, line: 72, baseType: !489)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !692, file: !656, line: 67)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !668, line: 76, baseType: !489)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !694, file: !656, line: 69)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !695, line: 24, baseType: !696)
!695 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !654, line: 38, baseType: !697)
!697 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !699, file: !656, line: 70)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !695, line: 25, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !654, line: 40, baseType: !701)
!701 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !703, file: !656, line: 71)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !695, line: 26, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !654, line: 42, baseType: !70)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !706, file: !656, line: 72)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !695, line: 27, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !654, line: 45, baseType: !19)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !709, file: !656, line: 74)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !668, line: 60, baseType: !697)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !711, file: !656, line: 75)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !668, line: 62, baseType: !19)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !713, file: !656, line: 76)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !668, line: 63, baseType: !19)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !715, file: !656, line: 77)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !668, line: 64, baseType: !19)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !717, file: !656, line: 79)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !677, line: 31, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !654, line: 53, baseType: !696)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !720, file: !656, line: 80)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !677, line: 32, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !654, line: 55, baseType: !700)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !723, file: !656, line: 81)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !677, line: 33, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !654, line: 57, baseType: !704)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !726, file: !656, line: 82)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !677, line: 34, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !654, line: 59, baseType: !707)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !729, file: !656, line: 84)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !668, line: 91, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !654, line: 73, baseType: !19)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !732, file: !656, line: 85)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !668, line: 79, baseType: !19)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !734, file: !738, line: 52)
!734 = !DISubprogram(name: "abs", scope: !735, file: !735, line: 980, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "7fa2ecb2348a66f8b44ab9a15abd0b72")
!736 = !DISubroutineType(types: !737)
!737 = !{!467, !467}
!738 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !740, file: !742, line: 131)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !735, line: 63, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !735, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!742 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !744, file: !742, line: 132)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !735, line: 71, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !735, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !746, identifier: "_ZTS6ldiv_t")
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !745, file: !735, line: 69, baseType: !489, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !745, file: !735, line: 70, baseType: !489, size: 64, offset: 64)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !750, file: !742, line: 134)
!750 = !DISubprogram(name: "abort", scope: !735, file: !735, line: 730, type: !32, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !752, file: !742, line: 136)
!752 = !DISubprogram(name: "aligned_alloc", scope: !735, file: !735, line: 724, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!755, !756, !756}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !757, line: 18, baseType: !19)
!757 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !759, file: !742, line: 138)
!759 = !DISubprogram(name: "atexit", scope: !735, file: !735, line: 734, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!467, !74}
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !763, file: !742, line: 141)
!763 = !DISubprogram(name: "at_quick_exit", scope: !735, file: !735, line: 739, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !765, file: !742, line: 144)
!765 = !DISubprogram(name: "atof", scope: !735, file: !735, line: 102, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !769}
!768 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !771, file: !742, line: 145)
!771 = !DISubprogram(name: "atoi", scope: !735, file: !735, line: 105, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!467, !769}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !775, file: !742, line: 146)
!775 = !DISubprogram(name: "atol", scope: !735, file: !735, line: 108, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!489, !769}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !779, file: !742, line: 147)
!779 = !DISubprogram(name: "bsearch", scope: !735, file: !735, line: 960, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!755, !152, !152, !756, !756, !782}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !735, line: 948, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!467, !152, !152}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !787, file: !742, line: 148)
!787 = !DISubprogram(name: "calloc", scope: !735, file: !735, line: 675, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !789, file: !742, line: 149)
!789 = !DISubprogram(name: "div", scope: !735, file: !735, line: 992, type: !790, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!740, !467, !467}
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !793, file: !742, line: 150)
!793 = !DISubprogram(name: "exit", scope: !735, file: !735, line: 756, type: !794, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !467}
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !797, file: !742, line: 151)
!797 = !DISubprogram(name: "free", scope: !735, file: !735, line: 687, type: !798, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !755}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !801, file: !742, line: 152)
!801 = !DISubprogram(name: "getenv", scope: !735, file: !735, line: 773, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!804, !769}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !806, file: !742, line: 153)
!806 = !DISubprogram(name: "labs", scope: !735, file: !735, line: 981, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!489, !489}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !810, file: !742, line: 154)
!810 = !DISubprogram(name: "ldiv", scope: !735, file: !735, line: 994, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!744, !489, !489}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !814, file: !742, line: 155)
!814 = !DISubprogram(name: "malloc", scope: !735, file: !735, line: 672, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!755, !756}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !818, file: !742, line: 157)
!818 = !DISubprogram(name: "mblen", scope: !735, file: !735, line: 1062, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!467, !769, !756}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !822, file: !742, line: 158)
!822 = !DISubprogram(name: "mbstowcs", scope: !735, file: !735, line: 1073, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!756, !825, !828, !756}
!825 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!828 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !769)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !830, file: !742, line: 159)
!830 = !DISubprogram(name: "mbtowc", scope: !735, file: !735, line: 1065, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!467, !825, !828, !756}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !834, file: !742, line: 161)
!834 = !DISubprogram(name: "qsort", scope: !735, file: !735, line: 970, type: !835, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !755, !756, !756, !782}
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !838, file: !742, line: 164)
!838 = !DISubprogram(name: "quick_exit", scope: !735, file: !735, line: 762, type: !794, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !840, file: !742, line: 167)
!840 = !DISubprogram(name: "rand", scope: !735, file: !735, line: 573, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!467}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !844, file: !742, line: 168)
!844 = !DISubprogram(name: "realloc", scope: !735, file: !735, line: 683, type: !845, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!755, !755, !756}
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !848, file: !742, line: 169)
!848 = !DISubprogram(name: "srand", scope: !735, file: !735, line: 575, type: !849, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !70}
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !852, file: !742, line: 170)
!852 = !DISubprogram(name: "strtod", scope: !735, file: !735, line: 118, type: !853, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DISubroutineType(types: !854)
!854 = !{!768, !828, !855}
!855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !858, file: !742, line: 171)
!858 = !DISubprogram(name: "strtol", linkageName: "__isoc23_strtol", scope: !735, file: !735, line: 215, type: !859, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{!489, !828, !855, !467}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !862, file: !742, line: 172)
!862 = !DISubprogram(name: "strtoul", linkageName: "__isoc23_strtoul", scope: !735, file: !735, line: 219, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{!19, !828, !855, !467}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !866, file: !742, line: 173)
!866 = !DISubprogram(name: "system", scope: !735, file: !735, line: 923, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !868, file: !742, line: 175)
!868 = !DISubprogram(name: "wcstombs", scope: !735, file: !735, line: 1077, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubroutineType(types: !870)
!870 = !{!756, !871, !872, !756}
!871 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !804)
!872 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !876, file: !742, line: 176)
!876 = !DISubprogram(name: "wctomb", scope: !735, file: !735, line: 1069, type: !877, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DISubroutineType(types: !878)
!878 = !{!467, !804, !827}
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !881, file: !742, line: 204)
!880 = !DINamespace(name: "__gnu_cxx", scope: null)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !735, line: 81, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !735, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !883, identifier: "_ZTS7lldiv_t")
!883 = !{!884, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !882, file: !735, line: 79, baseType: !885, size: 64)
!885 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !882, file: !735, line: 80, baseType: !885, size: 64, offset: 64)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !888, file: !742, line: 210)
!888 = !DISubprogram(name: "_Exit", scope: !735, file: !735, line: 768, type: !794, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !890, file: !742, line: 214)
!890 = !DISubprogram(name: "llabs", scope: !735, file: !735, line: 984, type: !891, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DISubroutineType(types: !892)
!892 = !{!885, !885}
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !894, file: !742, line: 220)
!894 = !DISubprogram(name: "lldiv", scope: !735, file: !735, line: 998, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!881, !885, !885}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !898, file: !742, line: 231)
!898 = !DISubprogram(name: "atoll", scope: !735, file: !735, line: 113, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!885, !769}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !902, file: !742, line: 232)
!902 = !DISubprogram(name: "strtoll", linkageName: "__isoc23_strtoll", scope: !735, file: !735, line: 238, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!885, !828, !855, !467}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !906, file: !742, line: 233)
!906 = !DISubprogram(name: "strtoull", linkageName: "__isoc23_strtoull", scope: !735, file: !735, line: 243, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!909, !828, !855, !467}
!909 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !911, file: !742, line: 235)
!911 = !DISubprogram(name: "strtof", scope: !735, file: !735, line: 124, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !828, !855}
!914 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !916, file: !742, line: 236)
!916 = !DISubprogram(name: "strtold", scope: !735, file: !735, line: 127, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!919, !828, !855}
!919 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !881, file: !742, line: 244)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !888, file: !742, line: 246)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !890, file: !742, line: 248)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !924, file: !742, line: 249)
!924 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !880, file: !742, line: 217, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !894, file: !742, line: 250)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !898, file: !742, line: 252)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !911, file: !742, line: 253)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !902, file: !742, line: 254)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !906, file: !742, line: 255)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !916, file: !742, line: 256)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !932, file: !947, line: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !933, line: 6, baseType: !934)
!933 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !935, line: 21, baseType: !936)
!935 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !935, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !937, identifier: "_ZTS11__mbstate_t")
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !936, file: !935, line: 15, baseType: !467, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !936, file: !935, line: 20, baseType: !940, size: 32, offset: 32)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !935, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !941, identifier: "_ZTSN11__mbstate_tUt_E")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !940, file: !935, line: 18, baseType: !70, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !940, file: !935, line: 19, baseType: !944, size: 32)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 32, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 4)
!947 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !949, file: !947, line: 141)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !950, line: 20, baseType: !70)
!950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !952, file: !947, line: 143)
!952 = !DISubprogram(name: "btowc", scope: !953, file: !953, line: 309, type: !954, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "889114206ea781a9a9a0b33e52589e47")
!954 = !DISubroutineType(types: !955)
!955 = !{!949, !467}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !957, file: !947, line: 144)
!957 = !DISubprogram(name: "fgetwc", scope: !953, file: !953, line: 935, type: !958, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{!949, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !962, line: 5, baseType: !963)
!962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !962, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !965, file: !947, line: 145)
!965 = !DISubprogram(name: "fgetws", scope: !953, file: !953, line: 964, type: !966, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DISubroutineType(types: !967)
!967 = !{!826, !825, !467, !968}
!968 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !960)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !970, file: !947, line: 146)
!970 = !DISubprogram(name: "fputwc", scope: !953, file: !953, line: 949, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DISubroutineType(types: !972)
!972 = !{!949, !827, !960}
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !974, file: !947, line: 147)
!974 = !DISubprogram(name: "fputws", scope: !953, file: !953, line: 971, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DISubroutineType(types: !976)
!976 = !{!467, !872, !968}
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !978, file: !947, line: 148)
!978 = !DISubprogram(name: "fwide", scope: !953, file: !953, line: 725, type: !979, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DISubroutineType(types: !980)
!980 = !{!467, !960, !467}
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !982, file: !947, line: 149)
!982 = !DISubprogram(name: "fwprintf", scope: !953, file: !953, line: 732, type: !983, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DISubroutineType(types: !984)
!984 = !{!467, !968, !872, null}
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !986, file: !947, line: 150)
!986 = !DISubprogram(name: "fwscanf", linkageName: "__isoc23_fwscanf", scope: !953, file: !953, line: 795, type: !983, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !988, file: !947, line: 151)
!988 = !DISubprogram(name: "getwc", scope: !953, file: !953, line: 936, type: !958, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !990, file: !947, line: 152)
!990 = !DISubprogram(name: "getwchar", scope: !953, file: !953, line: 942, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!949}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !994, file: !947, line: 153)
!994 = !DISubprogram(name: "mbrlen", scope: !953, file: !953, line: 332, type: !995, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!756, !828, !756, !997}
!997 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1000, file: !947, line: 154)
!1000 = !DISubprogram(name: "mbrtowc", scope: !953, file: !953, line: 321, type: !1001, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!756, !825, !828, !756, !997}
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1004, file: !947, line: 155)
!1004 = !DISubprogram(name: "mbsinit", scope: !953, file: !953, line: 317, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!467, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1010, file: !947, line: 156)
!1010 = !DISubprogram(name: "mbsrtowcs", scope: !953, file: !953, line: 362, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!756, !825, !1013, !756, !997}
!1013 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1016, file: !947, line: 157)
!1016 = !DISubprogram(name: "putwc", scope: !953, file: !953, line: 950, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1018, file: !947, line: 158)
!1018 = !DISubprogram(name: "putwchar", scope: !953, file: !953, line: 956, type: !1019, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!949, !827}
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1022, file: !947, line: 160)
!1022 = !DISubprogram(name: "swprintf", scope: !953, file: !953, line: 742, type: !1023, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!467, !825, !756, !872, null}
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1026, file: !947, line: 162)
!1026 = !DISubprogram(name: "swscanf", linkageName: "__isoc23_swscanf", scope: !953, file: !953, line: 802, type: !1027, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!467, !872, !872, null}
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1030, file: !947, line: 163)
!1030 = !DISubprogram(name: "ungetwc", scope: !953, file: !953, line: 979, type: !1031, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!949, !949, !960}
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1034, file: !947, line: 164)
!1034 = !DISubprogram(name: "vfwprintf", scope: !953, file: !953, line: 750, type: !1035, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!467, !968, !872, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1039, identifier: "_ZTS13__va_list_tag")
!1039 = !{!1040, !1041, !1042, !1043}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1038, file: !3, baseType: !70, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1038, file: !3, baseType: !70, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1038, file: !3, baseType: !755, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1038, file: !3, baseType: !755, size: 64, offset: 128)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1045, file: !947, line: 166)
!1045 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc23_vfwscanf", scope: !953, file: !953, line: 875, type: !1035, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1047, file: !947, line: 169)
!1047 = !DISubprogram(name: "vswprintf", scope: !953, file: !953, line: 763, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!467, !825, !756, !872, !1037}
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1051, file: !947, line: 172)
!1051 = !DISubprogram(name: "vswscanf", linkageName: "__isoc23_vswscanf", scope: !953, file: !953, line: 882, type: !1052, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!467, !872, !872, !1037}
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1055, file: !947, line: 174)
!1055 = !DISubprogram(name: "vwprintf", scope: !953, file: !953, line: 758, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!467, !872, !1037}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1059, file: !947, line: 176)
!1059 = !DISubprogram(name: "vwscanf", linkageName: "__isoc23_vwscanf", scope: !953, file: !953, line: 879, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1061, file: !947, line: 178)
!1061 = !DISubprogram(name: "wcrtomb", scope: !953, file: !953, line: 326, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!756, !871, !827, !997}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1065, file: !947, line: 179)
!1065 = !DISubprogram(name: "wcscat", scope: !953, file: !953, line: 121, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!826, !825, !872}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1069, file: !947, line: 180)
!1069 = !DISubprogram(name: "wcscmp", scope: !953, file: !953, line: 130, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!467, !873, !873}
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1073, file: !947, line: 181)
!1073 = !DISubprogram(name: "wcscoll", scope: !953, file: !953, line: 155, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1075, file: !947, line: 182)
!1075 = !DISubprogram(name: "wcscpy", scope: !953, file: !953, line: 98, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1077, file: !947, line: 183)
!1077 = !DISubprogram(name: "wcscspn", scope: !953, file: !953, line: 212, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!756, !873, !873}
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1081, file: !947, line: 184)
!1081 = !DISubprogram(name: "wcsftime", scope: !953, file: !953, line: 1043, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!756, !825, !756, !872, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !953, line: 94, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1089, file: !947, line: 185)
!1089 = !DISubprogram(name: "wcslen", scope: !953, file: !953, line: 247, type: !1090, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!756, !873}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1093, file: !947, line: 186)
!1093 = !DISubprogram(name: "wcsncat", scope: !953, file: !953, line: 125, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!826, !825, !872, !756}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1097, file: !947, line: 187)
!1097 = !DISubprogram(name: "wcsncmp", scope: !953, file: !953, line: 133, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!467, !873, !873, !756}
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1101, file: !947, line: 188)
!1101 = !DISubprogram(name: "wcsncpy", scope: !953, file: !953, line: 103, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1103, file: !947, line: 189)
!1103 = !DISubprogram(name: "wcsrtombs", scope: !953, file: !953, line: 368, type: !1104, flags: DIFlagPrototyped, spFlags: 0)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!756, !871, !1106, !756, !997}
!1106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1109, file: !947, line: 190)
!1109 = !DISubprogram(name: "wcsspn", scope: !953, file: !953, line: 216, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1111, file: !947, line: 191)
!1111 = !DISubprogram(name: "wcstod", scope: !953, file: !953, line: 402, type: !1112, flags: DIFlagPrototyped, spFlags: 0)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!768, !872, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1117, file: !947, line: 193)
!1117 = !DISubprogram(name: "wcstof", scope: !953, file: !953, line: 407, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!914, !872, !1114}
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1121, file: !947, line: 195)
!1121 = !DISubprogram(name: "wcstok", scope: !953, file: !953, line: 242, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!826, !825, !872, !1114}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1125, file: !947, line: 196)
!1125 = !DISubprogram(name: "wcstol", linkageName: "__isoc23_wcstol", scope: !953, file: !953, line: 500, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!489, !872, !1114, !467}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1129, file: !947, line: 197)
!1129 = !DISubprogram(name: "wcstoul", linkageName: "__isoc23_wcstoul", scope: !953, file: !953, line: 503, type: !1130, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!19, !872, !1114, !467}
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1133, file: !947, line: 198)
!1133 = !DISubprogram(name: "wcsxfrm", scope: !953, file: !953, line: 159, type: !1134, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!756, !825, !872, !756}
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1137, file: !947, line: 199)
!1137 = !DISubprogram(name: "wctob", scope: !953, file: !953, line: 313, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!467, !949}
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1141, file: !947, line: 200)
!1141 = !DISubprogram(name: "wmemcmp", scope: !953, file: !953, line: 283, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1143, file: !947, line: 201)
!1143 = !DISubprogram(name: "wmemcpy", scope: !953, file: !953, line: 287, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1145, file: !947, line: 202)
!1145 = !DISubprogram(name: "wmemmove", scope: !953, file: !953, line: 292, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!826, !826, !873, !756}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1149, file: !947, line: 203)
!1149 = !DISubprogram(name: "wmemset", scope: !953, file: !953, line: 296, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!826, !826, !827, !756}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1153, file: !947, line: 204)
!1153 = !DISubprogram(name: "wprintf", scope: !953, file: !953, line: 739, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!467, !872, null}
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1157, file: !947, line: 205)
!1157 = !DISubprogram(name: "wscanf", linkageName: "__isoc23_wscanf", scope: !953, file: !953, line: 799, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1159, file: !947, line: 206)
!1159 = !DISubprogram(name: "wcschr", scope: !953, file: !953, line: 189, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!826, !873, !827}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1163, file: !947, line: 207)
!1163 = !DISubprogram(name: "wcspbrk", scope: !953, file: !953, line: 226, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!826, !873, !873}
!1166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1167, file: !947, line: 208)
!1167 = !DISubprogram(name: "wcsrchr", scope: !953, file: !953, line: 199, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1169, file: !947, line: 209)
!1169 = !DISubprogram(name: "wcsstr", scope: !953, file: !953, line: 237, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1171, file: !947, line: 210)
!1171 = !DISubprogram(name: "wmemchr", scope: !953, file: !953, line: 278, type: !1172, flags: DIFlagPrototyped, spFlags: 0)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!826, !873, !827, !756}
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1175, file: !947, line: 251)
!1175 = !DISubprogram(name: "wcstold", scope: !953, file: !953, line: 409, type: !1176, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!919, !872, !1114}
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1179, file: !947, line: 260)
!1179 = !DISubprogram(name: "wcstoll", linkageName: "__isoc23_wcstoll", scope: !953, file: !953, line: 508, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!885, !872, !1114, !467}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1183, file: !947, line: 261)
!1183 = !DISubprogram(name: "wcstoull", linkageName: "__isoc23_wcstoull", scope: !953, file: !953, line: 513, type: !1184, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!909, !872, !1114, !467}
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1175, file: !947, line: 267)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1179, file: !947, line: 268)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1183, file: !947, line: 269)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1117, file: !947, line: 283)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1045, file: !947, line: 286)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1051, file: !947, line: 289)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1059, file: !947, line: 292)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1175, file: !947, line: 296)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1179, file: !947, line: 297)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1183, file: !947, line: 298)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1197, file: !1198, line: 66)
!1197 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1199, file: !1198, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1198 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!1199 = !DINamespace(name: "__exception_ptr", scope: !8)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1199, entity: !1201, file: !1198, line: 85)
!1201 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !8, file: !1198, line: 81, type: !1202, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !1197}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1205, file: !1198, line: 243)
!1205 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !1199, file: !1198, line: 230, type: !1206, flags: DIFlagPrototyped, spFlags: 0)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1208, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1197, size: 64)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1210, file: !1212, line: 53)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1211, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1211 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "23ebf40dea0ab9a74daf64a0eaa99518")
!1212 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1214, file: !1212, line: 54)
!1214 = !DISubprogram(name: "setlocale", scope: !1211, file: !1211, line: 122, type: !1215, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!804, !467, !769}
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1218, file: !1212, line: 55)
!1218 = !DISubprogram(name: "localeconv", scope: !1211, file: !1211, line: 125, type: !1219, flags: DIFlagPrototyped, spFlags: 0)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1223, file: !1225, line: 64)
!1223 = !DISubprogram(name: "isalnum", scope: !1224, file: !1224, line: 108, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1224 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!1225 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1227, file: !1225, line: 65)
!1227 = !DISubprogram(name: "isalpha", scope: !1224, file: !1224, line: 109, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1229, file: !1225, line: 66)
!1229 = !DISubprogram(name: "iscntrl", scope: !1224, file: !1224, line: 110, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1231, file: !1225, line: 67)
!1231 = !DISubprogram(name: "isdigit", scope: !1224, file: !1224, line: 111, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1233, file: !1225, line: 68)
!1233 = !DISubprogram(name: "isgraph", scope: !1224, file: !1224, line: 113, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1235, file: !1225, line: 69)
!1235 = !DISubprogram(name: "islower", scope: !1224, file: !1224, line: 112, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1237, file: !1225, line: 70)
!1237 = !DISubprogram(name: "isprint", scope: !1224, file: !1224, line: 114, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1239, file: !1225, line: 71)
!1239 = !DISubprogram(name: "ispunct", scope: !1224, file: !1224, line: 115, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1241, file: !1225, line: 72)
!1241 = !DISubprogram(name: "isspace", scope: !1224, file: !1224, line: 116, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1243, file: !1225, line: 73)
!1243 = !DISubprogram(name: "isupper", scope: !1224, file: !1224, line: 117, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1245, file: !1225, line: 74)
!1245 = !DISubprogram(name: "isxdigit", scope: !1224, file: !1224, line: 118, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1247, file: !1225, line: 75)
!1247 = !DISubprogram(name: "tolower", scope: !1224, file: !1224, line: 122, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1249, file: !1225, line: 76)
!1249 = !DISubprogram(name: "toupper", scope: !1224, file: !1224, line: 125, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1251, file: !1225, line: 87)
!1251 = !DISubprogram(name: "isblank", scope: !1224, file: !1224, line: 130, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1253, entity: !1254, file: !1255, line: 58)
!1253 = !DINamespace(name: "__gnu_debug", scope: null)
!1254 = !DINamespace(name: "__debug", scope: !8)
!1255 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1257, file: !1259, line: 98)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !963)
!1258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1259 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!1260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1261, file: !1259, line: 99)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1262, line: 85, baseType: !1263)
!1262 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1264, line: 14, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1264, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1267, file: !1259, line: 101)
!1267 = !DISubprogram(name: "clearerr", scope: !1262, file: !1262, line: 860, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1272, file: !1259, line: 102)
!1272 = !DISubprogram(name: "fclose", scope: !1262, file: !1262, line: 184, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!467, !1270}
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1276, file: !1259, line: 103)
!1276 = !DISubprogram(name: "feof", scope: !1262, file: !1262, line: 862, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1278, file: !1259, line: 104)
!1278 = !DISubprogram(name: "ferror", scope: !1262, file: !1262, line: 864, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1280, file: !1259, line: 105)
!1280 = !DISubprogram(name: "fflush", scope: !1262, file: !1262, line: 236, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1282, file: !1259, line: 106)
!1282 = !DISubprogram(name: "fgetc", scope: !1262, file: !1262, line: 575, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1284, file: !1259, line: 107)
!1284 = !DISubprogram(name: "fgetpos", scope: !1262, file: !1262, line: 829, type: !1285, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!467, !1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1270)
!1288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1291, file: !1259, line: 108)
!1291 = !DISubprogram(name: "fgets", scope: !1262, file: !1262, line: 654, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!804, !871, !467, !1287}
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1295, file: !1259, line: 109)
!1295 = !DISubprogram(name: "fopen", scope: !1262, file: !1262, line: 264, type: !1296, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1270, !828, !828}
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1299, file: !1259, line: 110)
!1299 = !DISubprogram(name: "fprintf", scope: !1262, file: !1262, line: 357, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!467, !1287, !828, null}
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1303, file: !1259, line: 111)
!1303 = !DISubprogram(name: "fputc", scope: !1262, file: !1262, line: 611, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!467, !467, !1270}
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1307, file: !1259, line: 112)
!1307 = !DISubprogram(name: "fputs", scope: !1262, file: !1262, line: 717, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!467, !828, !1287}
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1311, file: !1259, line: 113)
!1311 = !DISubprogram(name: "fread", scope: !1262, file: !1262, line: 738, type: !1312, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!756, !1314, !756, !756, !1287}
!1314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !755)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1316, file: !1259, line: 114)
!1316 = !DISubprogram(name: "freopen", scope: !1262, file: !1262, line: 271, type: !1317, flags: DIFlagPrototyped, spFlags: 0)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1270, !828, !828, !1287}
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1320, file: !1259, line: 115)
!1320 = !DISubprogram(name: "fscanf", linkageName: "__isoc23_fscanf", scope: !1262, file: !1262, line: 442, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1322, file: !1259, line: 116)
!1322 = !DISubprogram(name: "fseek", scope: !1262, file: !1262, line: 779, type: !1323, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!467, !1270, !489, !467}
!1325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1326, file: !1259, line: 117)
!1326 = !DISubprogram(name: "fsetpos", scope: !1262, file: !1262, line: 835, type: !1327, flags: DIFlagPrototyped, spFlags: 0)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!467, !1270, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1332, file: !1259, line: 118)
!1332 = !DISubprogram(name: "ftell", scope: !1262, file: !1262, line: 785, type: !1333, flags: DIFlagPrototyped, spFlags: 0)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!489, !1270}
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1336, file: !1259, line: 119)
!1336 = !DISubprogram(name: "fwrite", scope: !1262, file: !1262, line: 745, type: !1337, flags: DIFlagPrototyped, spFlags: 0)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!756, !1339, !756, !756, !1287}
!1339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1341, file: !1259, line: 120)
!1341 = !DISubprogram(name: "getc", scope: !1262, file: !1262, line: 576, type: !1273, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1343, file: !1259, line: 121)
!1343 = !DISubprogram(name: "getchar", scope: !1262, file: !1262, line: 582, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1345, file: !1259, line: 126)
!1345 = !DISubprogram(name: "perror", scope: !1262, file: !1262, line: 878, type: !1346, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !769}
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1349, file: !1259, line: 127)
!1349 = !DISubprogram(name: "printf", scope: !1262, file: !1262, line: 363, type: !1350, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!467, !828, null}
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1353, file: !1259, line: 128)
!1353 = !DISubprogram(name: "putc", scope: !1262, file: !1262, line: 612, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1355, file: !1259, line: 129)
!1355 = !DISubprogram(name: "putchar", scope: !1262, file: !1262, line: 618, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1357, file: !1259, line: 130)
!1357 = !DISubprogram(name: "puts", scope: !1262, file: !1262, line: 724, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1359, file: !1259, line: 131)
!1359 = !DISubprogram(name: "remove", scope: !1262, file: !1262, line: 158, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1361, file: !1259, line: 132)
!1361 = !DISubprogram(name: "rename", scope: !1262, file: !1262, line: 160, type: !1362, flags: DIFlagPrototyped, spFlags: 0)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!467, !769, !769}
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1365, file: !1259, line: 133)
!1365 = !DISubprogram(name: "rewind", scope: !1262, file: !1262, line: 790, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1367, file: !1259, line: 134)
!1367 = !DISubprogram(name: "scanf", linkageName: "__isoc23_scanf", scope: !1262, file: !1262, line: 445, type: !1350, flags: DIFlagPrototyped, spFlags: 0)
!1368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1369, file: !1259, line: 135)
!1369 = !DISubprogram(name: "setbuf", scope: !1262, file: !1262, line: 334, type: !1370, flags: DIFlagPrototyped, spFlags: 0)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1287, !871}
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1373, file: !1259, line: 136)
!1373 = !DISubprogram(name: "setvbuf", scope: !1262, file: !1262, line: 339, type: !1374, flags: DIFlagPrototyped, spFlags: 0)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!467, !1287, !871, !467, !756}
!1376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1377, file: !1259, line: 137)
!1377 = !DISubprogram(name: "sprintf", scope: !1262, file: !1262, line: 365, type: !1378, flags: DIFlagPrototyped, spFlags: 0)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!467, !871, !828, null}
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1381, file: !1259, line: 138)
!1381 = !DISubprogram(name: "sscanf", linkageName: "__isoc23_sscanf", scope: !1262, file: !1262, line: 447, type: !1382, flags: DIFlagPrototyped, spFlags: 0)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!467, !828, !828, null}
!1384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1385, file: !1259, line: 139)
!1385 = !DISubprogram(name: "tmpfile", scope: !1262, file: !1262, line: 194, type: !1386, flags: DIFlagPrototyped, spFlags: 0)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1270}
!1388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1389, file: !1259, line: 141)
!1389 = !DISubprogram(name: "tmpnam", scope: !1262, file: !1262, line: 211, type: !1390, flags: DIFlagPrototyped, spFlags: 0)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!804, !804}
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1393, file: !1259, line: 143)
!1393 = !DISubprogram(name: "ungetc", scope: !1262, file: !1262, line: 731, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1395, file: !1259, line: 144)
!1395 = !DISubprogram(name: "vfprintf", scope: !1262, file: !1262, line: 372, type: !1396, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!467, !1287, !828, !1037}
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1399, file: !1259, line: 145)
!1399 = !DISubprogram(name: "vprintf", scope: !1262, file: !1262, line: 378, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!467, !828, !1037}
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1403, file: !1259, line: 146)
!1403 = !DISubprogram(name: "vsprintf", scope: !1262, file: !1262, line: 380, type: !1404, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!467, !871, !828, !1037}
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1407, file: !1259, line: 175)
!1407 = !DISubprogram(name: "snprintf", scope: !1262, file: !1262, line: 385, type: !1408, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!467, !871, !756, !828, null}
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1411, file: !1259, line: 176)
!1411 = !DISubprogram(name: "vfscanf", linkageName: "__isoc23_vfscanf", scope: !1262, file: !1262, line: 511, type: !1396, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1413, file: !1259, line: 177)
!1413 = !DISubprogram(name: "vscanf", linkageName: "__isoc23_vscanf", scope: !1262, file: !1262, line: 516, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1415, file: !1259, line: 178)
!1415 = !DISubprogram(name: "vsnprintf", scope: !1262, file: !1262, line: 389, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!467, !871, !756, !828, !1037}
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !880, entity: !1419, file: !1259, line: 179)
!1419 = !DISubprogram(name: "vsscanf", linkageName: "__isoc23_vsscanf", scope: !1262, file: !1262, line: 519, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!467, !828, !828, !1037}
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1407, file: !1259, line: 185)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1411, file: !1259, line: 186)
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1413, file: !1259, line: 187)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1415, file: !1259, line: 188)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1419, file: !1259, line: 189)
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1428, file: !1434, line: 58)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1429, line: 24, baseType: !1430)
!1429 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_max_align_t.h", directory: "", checksumkind: CSK_MD5, checksum: "3c0a2f19d136d39aa835c737c7105def")
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1429, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !1431, identifier: "_ZTS11max_align_t")
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !1430, file: !1429, line: 20, baseType: !885, size: 64, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !1430, file: !1429, line: 22, baseType: !919, size: 128, align: 128, offset: 128)
!1434 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1436, file: !1440, line: 82)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1437, line: 48, baseType: !1438)
!1437 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "eff95da6508e8f67a3c7b77d9d8ab229")
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!1440 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1442, file: !1440, line: 83)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1443, line: 38, baseType: !19)
!1443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "7f19501745f9a1fbbace8f0f185de59a")
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !949, file: !1440, line: 84)
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1446, file: !1440, line: 86)
!1446 = !DISubprogram(name: "iswalnum", scope: !1443, file: !1443, line: 95, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1448, file: !1440, line: 87)
!1448 = !DISubprogram(name: "iswalpha", scope: !1443, file: !1443, line: 101, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1450, file: !1440, line: 89)
!1450 = !DISubprogram(name: "iswblank", scope: !1443, file: !1443, line: 146, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1452, file: !1440, line: 91)
!1452 = !DISubprogram(name: "iswcntrl", scope: !1443, file: !1443, line: 104, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1454, file: !1440, line: 92)
!1454 = !DISubprogram(name: "iswctype", scope: !1443, file: !1443, line: 159, type: !1455, flags: DIFlagPrototyped, spFlags: 0)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!467, !949, !1442}
!1457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1458, file: !1440, line: 93)
!1458 = !DISubprogram(name: "iswdigit", scope: !1443, file: !1443, line: 108, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1460, file: !1440, line: 94)
!1460 = !DISubprogram(name: "iswgraph", scope: !1443, file: !1443, line: 112, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1462, file: !1440, line: 95)
!1462 = !DISubprogram(name: "iswlower", scope: !1443, file: !1443, line: 117, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1464, file: !1440, line: 96)
!1464 = !DISubprogram(name: "iswprint", scope: !1443, file: !1443, line: 120, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1466, file: !1440, line: 97)
!1466 = !DISubprogram(name: "iswpunct", scope: !1443, file: !1443, line: 125, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1468, file: !1440, line: 98)
!1468 = !DISubprogram(name: "iswspace", scope: !1443, file: !1443, line: 130, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1470, file: !1440, line: 99)
!1470 = !DISubprogram(name: "iswupper", scope: !1443, file: !1443, line: 135, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1472, file: !1440, line: 100)
!1472 = !DISubprogram(name: "iswxdigit", scope: !1443, file: !1443, line: 140, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1474, file: !1440, line: 101)
!1474 = !DISubprogram(name: "towctrans", scope: !1437, file: !1437, line: 55, type: !1475, flags: DIFlagPrototyped, spFlags: 0)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!949, !949, !1436}
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1478, file: !1440, line: 102)
!1478 = !DISubprogram(name: "towlower", scope: !1443, file: !1443, line: 166, type: !1479, flags: DIFlagPrototyped, spFlags: 0)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!949, !949}
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1482, file: !1440, line: 103)
!1482 = !DISubprogram(name: "towupper", scope: !1443, file: !1443, line: 169, type: !1479, flags: DIFlagPrototyped, spFlags: 0)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1484, file: !1440, line: 104)
!1484 = !DISubprogram(name: "wctrans", scope: !1437, file: !1437, line: 52, type: !1485, flags: DIFlagPrototyped, spFlags: 0)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1436, !769}
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1488, file: !1440, line: 105)
!1488 = !DISubprogram(name: "wctype", scope: !1443, file: !1443, line: 155, type: !1489, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1442, !769}
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1492, file: !1495, line: 60)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1493, line: 7, baseType: !1494)
!1493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !654, line: 156, baseType: !489)
!1495 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1497, file: !1495, line: 61)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1498, line: 10, baseType: !1499)
!1498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !654, line: 160, baseType: !489)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1087, file: !1495, line: 62)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1502, file: !1495, line: 64)
!1502 = !DISubprogram(name: "clock", scope: !1503, file: !1503, line: 72, type: !1504, flags: DIFlagPrototyped, spFlags: 0)
!1503 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "0f2fb4d8bdeb2539d9a74dd8d835207f")
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1492}
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1507, file: !1495, line: 65)
!1507 = !DISubprogram(name: "difftime", scope: !1503, file: !1503, line: 79, type: !1508, flags: DIFlagPrototyped, spFlags: 0)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!768, !1497, !1497}
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1511, file: !1495, line: 66)
!1511 = !DISubprogram(name: "mktime", scope: !1503, file: !1503, line: 83, type: !1512, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1497, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1516, file: !1495, line: 67)
!1516 = !DISubprogram(name: "time", scope: !1503, file: !1503, line: 76, type: !1517, flags: DIFlagPrototyped, spFlags: 0)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1497, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1521, file: !1495, line: 68)
!1521 = !DISubprogram(name: "asctime", scope: !1503, file: !1503, line: 180, type: !1522, flags: DIFlagPrototyped, spFlags: 0)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!804, !1085}
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1525, file: !1495, line: 69)
!1525 = !DISubprogram(name: "ctime", scope: !1503, file: !1503, line: 184, type: !1526, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!804, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1531, file: !1495, line: 70)
!1531 = !DISubprogram(name: "gmtime", scope: !1503, file: !1503, line: 133, type: !1532, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1514, !1528}
!1534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1535, file: !1495, line: 71)
!1535 = !DISubprogram(name: "localtime", scope: !1503, file: !1503, line: 137, type: !1532, flags: DIFlagPrototyped, spFlags: 0)
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1537, file: !1495, line: 72)
!1537 = !DISubprogram(name: "strftime", scope: !1503, file: !1503, line: 100, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!756, !871, !756, !828, !1084}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1541, file: !1495, line: 79)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1542, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !1543, identifier: "_ZTS8timespec")
!1542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1541, file: !1542, line: 16, baseType: !1499, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1541, file: !1542, line: 21, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !654, line: 197, baseType: !489)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !1548, file: !1495, line: 80)
!1548 = !DISubprogram(name: "timespec_get", scope: !1503, file: !1503, line: 384, type: !1549, flags: DIFlagPrototyped, spFlags: 0)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!467, !1551, !467}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1553, entity: !1554, file: !1556, line: 1438)
!1553 = !DINamespace(name: "chrono", scope: !8)
!1554 = !DINamespace(name: "chrono_literals", scope: !1555, exportSymbols: true)
!1555 = !DINamespace(name: "literals", scope: !8, exportSymbols: true)
!1556 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1558, file: !3, line: 9)
!1558 = !DIGlobalVariable(name: "cout", linkageName: "_ZSt4cout", scope: !8, file: !1559, line: 63, type: !1560, isLocal: false, isDefinition: false)
!1559 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/iostream", directory: "")
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !8, file: !1561, line: 143, baseType: !1562)
!1561 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/iosfwd", directory: "")
!1562 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !8, file: !1563, line: 345, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1563 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/ostream.tcc", directory: "")
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !3, line: 12)
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !7, file: !3, line: 13)
!1566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !706)
!1567 = !{i32 7, !"Dwarf Version", i32 5}
!1568 = !{i32 2, !"Debug Info Version", i32 3}
!1569 = !{i32 1, !"wchar_size", i32 4}
!1570 = !{i32 8, !"PIC Level", i32 2}
!1571 = !{i32 7, !"PIE Level", i32 2}
!1572 = !{i32 7, !"uwtable", i32 2}
!1573 = !{i32 7, !"frame-pointer", i32 2}
!1574 = !{!"Ubuntu clang version 18.1.8 (++20240731025043+3b5b5c1ec4a3-1~exp1~20240731145144.92)"}
!1575 = distinct !DISubprogram(name: "reader", linkageName: "_Z6readerv", scope: !3, file: !3, line: 17, type: !32, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!1576 = !DILocation(line: 18, column: 3, scope: !1575)
!1577 = !DILocation(line: 18, column: 10, scope: !1575)
!1578 = !DILocation(line: 18, column: 12, scope: !1575)
!1579 = distinct !{!1579, !1576, !1580, !1581}
!1580 = !DILocation(line: 19, column: 3, scope: !1575)
!1581 = !{!"llvm.loop.mustprogress"}
!1582 = !DILocation(line: 20, column: 8, scope: !1575)
!1583 = !DILocation(line: 20, column: 19, scope: !1575)
!1584 = !DILocation(line: 21, column: 1, scope: !1575)
!1585 = distinct !DISubprogram(name: "writer", linkageName: "_Z6writerv", scope: !3, file: !3, line: 23, type: !32, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2)
!1586 = !DILocation(line: 24, column: 8, scope: !1585)
!1587 = !DILocation(line: 25, column: 5, scope: !1585)
!1588 = !DILocation(line: 26, column: 1, scope: !1585)
!1589 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 28, type: !841, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1590 = !DILocalVariable(name: "t2", scope: !1589, file: !3, line: 29, type: !7)
!1591 = !DILocation(line: 29, column: 10, scope: !1589)
!1592 = !DILocalVariable(name: "t1", scope: !1589, file: !3, line: 30, type: !7)
!1593 = !DILocation(line: 30, column: 10, scope: !1589)
!1594 = !DILocation(line: 32, column: 6, scope: !1589)
!1595 = !DILocation(line: 33, column: 6, scope: !1589)
!1596 = !DILocation(line: 35, column: 3, scope: !1589)
!1597 = !DILocation(line: 36, column: 1, scope: !1589)
!1598 = distinct !DISubprogram(name: "thread<void (&)(), void>", linkageName: "_ZNSt6threadC2IRFvvEJEvEEOT_DpOT0_", scope: !7, file: !6, line: 154, type: !1599, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1603, declaration: !1602, retainedNodes: !144)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !30, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!1602 = !DISubprogram(name: "thread<void (&)(), void>", scope: !7, file: !6, line: 154, type: !1599, scopeLine: 154, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1603)
!1603 = !{!1604, !445, !1605}
!1604 = !DITemplateTypeParameter(name: "_Callable", type: !1601)
!1605 = !DITemplateTypeParameter(type: null)
!1606 = !DILocalVariable(name: "this", arg: 1, scope: !1598, type: !1607, flags: DIFlagArtificial | DIFlagObjectPointer)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1608 = !DILocation(line: 0, scope: !1598)
!1609 = !DILocalVariable(name: "__f", arg: 2, scope: !1598, file: !6, line: 154, type: !1601)
!1610 = !DILocation(line: 154, column: 26, scope: !1598)
!1611 = !DILocation(line: 154, column: 7, scope: !1598)
!1612 = !DILocation(line: 164, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1598, file: !6, line: 155, column: 7)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State_impl<std::thread::_Invoker<std::tuple<void (*)()> > >", scope: !7, file: !6, line: 234, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1615, vtableHolder: !110, templateParams: !1622, identifier: "_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE")
!1615 = !{!1616, !1617, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1614, baseType: !110, extraData: i32 0)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_M_func", scope: !1614, file: !6, line: 236, baseType: !628, size: 64, offset: 64)
!1618 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv", scope: !1614, file: !6, line: 244, type: !1619, scopeLine: 244, containingType: !1614, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1622 = !{!1623}
!1623 = !DITemplateTypeParameter(name: "_Callable", type: !628)
!1624 = !DILocation(line: 165, column: 32, scope: !1613)
!1625 = !DILocation(line: 164, column: 33, scope: !1613)
!1626 = !DILocation(line: 164, column: 18, scope: !1613)
!1627 = !DILocation(line: 164, column: 2, scope: !1613)
!1628 = !DILocation(line: 167, column: 7, scope: !1598)
!1629 = !DILocation(line: 167, column: 7, scope: !1613)
!1630 = distinct !DISubprogram(name: "~thread", linkageName: "_ZNSt6threadD2Ev", scope: !7, file: !6, line: 170, type: !28, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !34, retainedNodes: !144)
!1631 = !DILocalVariable(name: "this", arg: 1, scope: !1630, type: !1607, flags: DIFlagArtificial | DIFlagObjectPointer)
!1632 = !DILocation(line: 0, scope: !1630)
!1633 = !DILocation(line: 172, column: 11, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !6, line: 172, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !6, line: 171, column: 5)
!1636 = !DILocation(line: 172, column: 11, scope: !1635)
!1637 = !DILocation(line: 322, column: 5, scope: !1638, inlinedAt: !1639)
!1638 = distinct !DISubprogram(name: "__terminate", linkageName: "_ZSt11__terminatev", scope: !383, file: !383, line: 319, type: !32, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2)
!1639 = distinct !DILocation(line: 173, column: 2, scope: !1634)
!1640 = !DILocation(line: 173, column: 2, scope: !1634)
!1641 = !DILocation(line: 174, column: 5, scope: !1630)
!1642 = distinct !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !7, file: !6, line: 196, type: !55, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !54, retainedNodes: !144)
!1643 = !DILocalVariable(name: "this", arg: 1, scope: !1642, type: !1644, flags: DIFlagArtificial | DIFlagObjectPointer)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1645 = !DILocation(line: 0, scope: !1642)
!1646 = !DILocation(line: 197, column: 16, scope: !1642)
!1647 = !DILocation(line: 197, column: 25, scope: !1642)
!1648 = !DILocation(line: 197, column: 22, scope: !1642)
!1649 = !DILocation(line: 197, column: 14, scope: !1642)
!1650 = !DILocation(line: 197, column: 7, scope: !1642)
!1651 = distinct !DISubprogram(name: "operator==", linkageName: "_ZSteqNSt6thread2idES0_", scope: !8, file: !6, line: 324, type: !1652, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!57, !11, !11}
!1654 = !DILocalVariable(name: "__x", arg: 1, scope: !1651, file: !6, line: 324, type: !11)
!1655 = !DILocation(line: 324, column: 25, scope: !1651)
!1656 = !DILocalVariable(name: "__y", arg: 2, scope: !1651, file: !6, line: 324, type: !11)
!1657 = !DILocation(line: 324, column: 41, scope: !1651)
!1658 = !DILocation(line: 330, column: 16, scope: !1651)
!1659 = !DILocation(line: 330, column: 33, scope: !1651)
!1660 = !DILocation(line: 330, column: 26, scope: !1651)
!1661 = !DILocation(line: 330, column: 5, scope: !1651)
!1662 = distinct !DISubprogram(name: "id", linkageName: "_ZNSt6thread2idC2Ev", scope: !11, file: !6, line: 97, type: !21, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !144)
!1663 = !DILocalVariable(name: "this", arg: 1, scope: !1662, type: !1664, flags: DIFlagArtificial | DIFlagObjectPointer)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1665 = !DILocation(line: 0, scope: !1662)
!1666 = !DILocation(line: 97, column: 23, scope: !1662)
!1667 = !DILocation(line: 97, column: 37, scope: !1662)
!1668 = distinct !DISubprogram(name: "_State_impl<void (&)()>", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEC2IJRS3_EEEDpOT_", scope: !1614, file: !6, line: 239, type: !1669, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1672, declaration: !1671, retainedNodes: !144)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1621, !1601}
!1671 = !DISubprogram(name: "_State_impl<void (&)()>", scope: !1614, file: !6, line: 239, type: !1669, scopeLine: 239, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1672)
!1672 = !{!1673}
!1673 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !1674)
!1674 = !{!1675}
!1675 = !DITemplateTypeParameter(type: !1601)
!1676 = !DILocalVariable(name: "this", arg: 1, scope: !1668, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1678 = !DILocation(line: 0, scope: !1668)
!1679 = !DILocalVariable(name: "__args", arg: 2, scope: !1668, file: !6, line: 239, type: !1601)
!1680 = !DILocation(line: 239, column: 27, scope: !1668)
!1681 = !DILocation(line: 239, column: 4, scope: !1668)
!1682 = !DILocation(line: 241, column: 4, scope: !1668)
!1683 = !DILocation(line: 240, column: 6, scope: !1668)
!1684 = !DILocation(line: 240, column: 34, scope: !1668)
!1685 = !DILocation(line: 241, column: 6, scope: !1668)
!1686 = !DILocation(line: 241, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1668, file: !6, line: 241, column: 4)
!1688 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_", scope: !75, file: !76, line: 317, type: !419, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1690, declaration: !1689, retainedNodes: !144)
!1689 = !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", scope: !75, file: !76, line: 317, type: !419, scopeLine: 317, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1690)
!1690 = !{!1691, !1605}
!1691 = !DITemplateTypeParameter(name: "_Del", type: !98)
!1692 = !DILocalVariable(name: "this", arg: 1, scope: !1688, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1694 = !DILocation(line: 0, scope: !1688)
!1695 = !DILocalVariable(name: "__p", arg: 2, scope: !1688, file: !76, line: 317, type: !400)
!1696 = !DILocation(line: 317, column: 21, scope: !1688)
!1697 = !DILocation(line: 318, column: 4, scope: !1688)
!1698 = !DILocation(line: 318, column: 9, scope: !1688)
!1699 = !DILocation(line: 319, column: 11, scope: !1688)
!1700 = distinct !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !7, file: !6, line: 143, type: !32, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !31)
!1701 = !DILocation(line: 148, column: 5, scope: !1700)
!1702 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev", scope: !75, file: !76, line: 398, type: !373, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !372, retainedNodes: !144)
!1703 = !DILocalVariable(name: "this", arg: 1, scope: !1702, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1704 = !DILocation(line: 0, scope: !1702)
!1705 = !DILocalVariable(name: "__ptr", scope: !1706, file: !76, line: 402, type: !336)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !76, line: 399, column: 7)
!1707 = !DILocation(line: 402, column: 8, scope: !1706)
!1708 = !DILocation(line: 402, column: 16, scope: !1706)
!1709 = !DILocation(line: 402, column: 21, scope: !1706)
!1710 = !DILocation(line: 403, column: 6, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !76, line: 403, column: 6)
!1712 = !DILocation(line: 403, column: 12, scope: !1711)
!1713 = !DILocation(line: 403, column: 6, scope: !1706)
!1714 = !DILocation(line: 404, column: 4, scope: !1711)
!1715 = !DILocation(line: 404, column: 28, scope: !1711)
!1716 = !DILocation(line: 404, column: 18, scope: !1711)
!1717 = !DILocation(line: 405, column: 2, scope: !1706)
!1718 = !DILocation(line: 405, column: 8, scope: !1706)
!1719 = !DILocation(line: 406, column: 7, scope: !1702)
!1720 = distinct !DISubprogram(name: "_State", linkageName: "_ZNSt6thread6_StateC2Ev", scope: !110, file: !6, line: 225, type: !1721, scopeLine: 225, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1724, retainedNodes: !144)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1724 = !DISubprogram(name: "_State", scope: !110, type: !1721, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1725 = !DILocalVariable(name: "this", arg: 1, scope: !1720, type: !109, flags: DIFlagArtificial | DIFlagObjectPointer)
!1726 = !DILocation(line: 0, scope: !1720)
!1727 = !DILocation(line: 225, column: 12, scope: !1720)
!1728 = distinct !DISubprogram(name: "_Invoker<void (&)()>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEC2IJRS2_EEEDpOT_", scope: !628, file: !6, line: 276, type: !1729, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1672, declaration: !1731, retainedNodes: !144)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !634, !1601}
!1731 = !DISubprogram(name: "_Invoker<void (&)()>", scope: !628, file: !6, line: 276, type: !1729, scopeLine: 276, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !1672)
!1732 = !DILocalVariable(name: "this", arg: 1, scope: !1728, type: !1733, flags: DIFlagArtificial | DIFlagObjectPointer)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1734 = !DILocation(line: 0, scope: !1728)
!1735 = !DILocalVariable(name: "__args", arg: 2, scope: !1728, file: !6, line: 276, type: !1601)
!1736 = !DILocation(line: 276, column: 24, scope: !1728)
!1737 = !DILocation(line: 277, column: 6, scope: !1728)
!1738 = !DILocation(line: 277, column: 31, scope: !1728)
!1739 = !DILocation(line: 277, column: 11, scope: !1728)
!1740 = !DILocation(line: 278, column: 6, scope: !1728)
!1741 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED2Ev", scope: !1614, file: !6, line: 234, type: !1619, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1742, retainedNodes: !144)
!1742 = !DISubprogram(name: "~_State_impl", scope: !1614, type: !1619, containingType: !1614, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1743 = !DILocalVariable(name: "this", arg: 1, scope: !1741, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1744 = !DILocation(line: 0, scope: !1741)
!1745 = !DILocation(line: 234, column: 14, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !6, line: 234, column: 14)
!1747 = !DILocation(line: 234, column: 14, scope: !1741)
!1748 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev", scope: !1614, file: !6, line: 234, type: !1619, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1742, retainedNodes: !144)
!1749 = !DILocalVariable(name: "this", arg: 1, scope: !1748, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1750 = !DILocation(line: 0, scope: !1748)
!1751 = !DILocation(line: 234, column: 14, scope: !1748)
!1752 = distinct !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv", scope: !1614, file: !6, line: 244, type: !1619, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1618, retainedNodes: !144)
!1753 = !DILocalVariable(name: "this", arg: 1, scope: !1752, type: !1677, flags: DIFlagArtificial | DIFlagObjectPointer)
!1754 = !DILocation(line: 0, scope: !1752)
!1755 = !DILocation(line: 244, column: 13, scope: !1752)
!1756 = !DILocation(line: 244, column: 24, scope: !1752)
!1757 = distinct !DISubprogram(name: "tuple<true, true>", linkageName: "_ZNSt5tupleIJPFvvEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS1_EEEbE4typeELb1EEES6_", scope: !600, file: !86, line: 874, type: !1758, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1761, declaration: !1760, retainedNodes: !144)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !606, !540}
!1760 = !DISubprogram(name: "tuple<true, true>", scope: !600, file: !86, line: 874, type: !1758, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !1761)
!1761 = !{!1762, !301}
!1762 = !DITemplateValueParameter(name: "_NotEmpty", type: !57, value: i1 true)
!1763 = !DILocalVariable(name: "this", arg: 1, scope: !1757, type: !1764, flags: DIFlagArtificial | DIFlagObjectPointer)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1765 = !DILocation(line: 0, scope: !1757)
!1766 = !DILocalVariable(name: "__elements", arg: 2, scope: !1757, file: !86, line: 874, type: !540)
!1767 = !DILocation(line: 874, column: 28, scope: !1757)
!1768 = !DILocation(line: 876, column: 15, scope: !1757)
!1769 = !DILocation(line: 876, column: 4, scope: !1757)
!1770 = !DILocation(line: 876, column: 32, scope: !1757)
!1771 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEEC2ERKS1_", scope: !564, file: !86, line: 507, type: !581, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !580, retainedNodes: !144)
!1772 = !DILocalVariable(name: "this", arg: 1, scope: !1771, type: !1773, flags: DIFlagArtificial | DIFlagObjectPointer)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!1774 = !DILocation(line: 0, scope: !1771)
!1775 = !DILocalVariable(name: "__head", arg: 2, scope: !1771, file: !86, line: 507, type: !540)
!1776 = !DILocation(line: 507, column: 32, scope: !1771)
!1777 = !DILocation(line: 508, column: 15, scope: !1771)
!1778 = !DILocation(line: 508, column: 9, scope: !1771)
!1779 = !DILocation(line: 509, column: 9, scope: !1771)
!1780 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPFvvELb0EEC2ERKS1_", scope: !530, file: !86, line: 193, type: !538, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !537, retainedNodes: !144)
!1781 = !DILocalVariable(name: "this", arg: 1, scope: !1780, type: !1782, flags: DIFlagArtificial | DIFlagObjectPointer)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1783 = !DILocation(line: 0, scope: !1780)
!1784 = !DILocalVariable(name: "__h", arg: 2, scope: !1780, file: !86, line: 193, type: !540)
!1785 = !DILocation(line: 193, column: 41, scope: !1780)
!1786 = !DILocation(line: 194, column: 9, scope: !1780)
!1787 = !DILocation(line: 194, column: 22, scope: !1780)
!1788 = !DILocation(line: 194, column: 29, scope: !1780)
!1789 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEEclEv", scope: !628, file: !6, line: 295, type: !632, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !631, retainedNodes: !144)
!1790 = !DILocalVariable(name: "this", arg: 1, scope: !1789, type: !1733, flags: DIFlagArtificial | DIFlagObjectPointer)
!1791 = !DILocation(line: 0, scope: !1789)
!1792 = !DILocation(line: 299, column: 11, scope: !1789)
!1793 = !DILocation(line: 299, column: 4, scope: !1789)
!1794 = distinct !DISubprogram(name: "_M_invoke<0UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE", scope: !628, file: !6, line: 291, type: !1795, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1804, declaration: !1803, retainedNodes: !144)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!438, !634, !1797}
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Index_tuple<0UL>", scope: !8, file: !1798, line: 140, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !1799, identifier: "_ZTSSt12_Index_tupleIJLm0EEE")
!1798 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/utility.h", directory: "")
!1799 = !{!1800}
!1800 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indexes", value: !1801)
!1801 = !{!1802}
!1802 = !DITemplateValueParameter(type: !19, value: i64 0)
!1803 = !DISubprogram(name: "_M_invoke<0UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvvEEEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE", scope: !628, file: !6, line: 291, type: !1795, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1804)
!1804 = !{!1805}
!1805 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ind", value: !1801)
!1806 = !DILocalVariable(name: "this", arg: 1, scope: !1794, type: !1733, flags: DIFlagArtificial | DIFlagObjectPointer)
!1807 = !DILocation(line: 0, scope: !1794)
!1808 = !DILocalVariable(arg: 2, scope: !1794, file: !6, line: 291, type: !1797)
!1809 = !DILocation(line: 291, column: 35, scope: !1794)
!1810 = !DILocation(line: 292, column: 52, scope: !1794)
!1811 = !DILocation(line: 292, column: 27, scope: !1794)
!1812 = !DILocation(line: 292, column: 13, scope: !1794)
!1813 = !DILocation(line: 292, column: 6, scope: !1794)
!1814 = !DILocalVariable(name: "__fn", arg: 1, scope: !435, file: !434, line: 90, type: !442)
!1815 = !DILocation(line: 90, column: 26, scope: !435)
!1816 = !DILocation(line: 96, column: 74, scope: !435)
!1817 = !DILocation(line: 96, column: 14, scope: !435)
!1818 = !DILocation(line: 96, column: 7, scope: !435)
!1819 = distinct !DISubprogram(name: "get<0UL, void (*)()>", linkageName: "_ZSt3getILm0EJPFvvEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_", scope: !8, file: !86, line: 1815, type: !1820, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1834, retainedNodes: !144)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1822, !612}
!1822 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, tuple<void (*)()> >", scope: !8, file: !1798, line: 84, baseType: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1825, file: !86, line: 1782, baseType: !1829)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<void (*)()> >", scope: !8, file: !86, line: 1778, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !1826, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPFvvEEEE")
!1826 = !{!1827, !1828}
!1827 = !DITemplateValueParameter(name: "__i", type: !19, value: i64 0)
!1828 = !DITemplateTypeParameter(name: "_Tp", type: !600)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1830, file: !1798, line: 236, baseType: !74)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, void (*)()>", scope: !8, file: !1798, line: 235, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !1831, identifier: "_ZTSSt9_Nth_typeILm0EJPFvvEEE")
!1831 = !{!1832, !1833}
!1832 = !DITemplateValueParameter(name: "_Np", type: !19, value: i64 0)
!1833 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !598)
!1834 = !{!1827, !597}
!1835 = !DILocalVariable(name: "__t", arg: 1, scope: !1819, file: !86, line: 1815, type: !612)
!1836 = !DILocation(line: 1815, column: 31, scope: !1819)
!1837 = !DILocation(line: 1818, column: 66, scope: !1819)
!1838 = !DILocation(line: 1818, column: 43, scope: !1819)
!1839 = !DILocation(line: 1818, column: 7, scope: !1819)
!1840 = distinct !DISubprogram(name: "__invoke_impl<void, void (*)()>", linkageName: "_ZSt13__invoke_implIvPFvvEJEET_St14__invoke_otherOT0_DpOT1_", scope: !8, file: !434, line: 60, type: !1841, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1843, retainedNodes: !144)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !452, !442}
!1843 = !{!1844, !1845, !445}
!1844 = !DITemplateTypeParameter(name: "_Res", type: null)
!1845 = !DITemplateTypeParameter(name: "_Fn", type: !74)
!1846 = !DILocalVariable(arg: 1, scope: !1840, file: !434, line: 60, type: !452)
!1847 = !DILocation(line: 60, column: 33, scope: !1840)
!1848 = !DILocalVariable(name: "__f", arg: 2, scope: !1840, file: !434, line: 60, type: !442)
!1849 = !DILocation(line: 60, column: 41, scope: !1840)
!1850 = !DILocation(line: 61, column: 32, scope: !1840)
!1851 = !DILocation(line: 61, column: 14, scope: !1840)
!1852 = !DILocation(line: 61, column: 7, scope: !1840)
!1853 = distinct !DISubprogram(name: "__get_helper<0UL, void (*)()>", linkageName: "_ZSt12__get_helperILm0EPFvvEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE", scope: !8, file: !86, line: 1787, type: !568, scopeLine: 1788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1854, retainedNodes: !144)
!1854 = !{!1827, !563, !1855}
!1855 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !144)
!1856 = !DILocalVariable(name: "__t", arg: 1, scope: !1853, file: !86, line: 1787, type: !570)
!1857 = !DILocation(line: 1787, column: 53, scope: !1853)
!1858 = !DILocation(line: 1788, column: 57, scope: !1853)
!1859 = !DILocation(line: 1788, column: 14, scope: !1853)
!1860 = !DILocation(line: 1788, column: 7, scope: !1853)
!1861 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvvEEE7_M_headERS2_", scope: !564, file: !86, line: 497, type: !568, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !567, retainedNodes: !144)
!1862 = !DILocalVariable(name: "__t", arg: 1, scope: !1861, file: !86, line: 497, type: !570)
!1863 = !DILocation(line: 497, column: 28, scope: !1861)
!1864 = !DILocation(line: 497, column: 66, scope: !1861)
!1865 = !DILocation(line: 497, column: 51, scope: !1861)
!1866 = !DILocation(line: 497, column: 44, scope: !1861)
!1867 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvvELb0EE7_M_headERS2_", scope: !530, file: !86, line: 234, type: !555, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !554, retainedNodes: !144)
!1868 = !DILocalVariable(name: "__b", arg: 1, scope: !1867, file: !86, line: 234, type: !558)
!1869 = !DILocation(line: 234, column: 27, scope: !1867)
!1870 = !DILocation(line: 234, column: 50, scope: !1867)
!1871 = !DILocation(line: 234, column: 54, scope: !1867)
!1872 = !DILocation(line: 234, column: 43, scope: !1867)
!1873 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_", scope: !79, file: !76, line: 241, type: !1874, scopeLine: 241, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1876, retainedNodes: !144)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !360, !318}
!1876 = !DISubprogram(name: "__uniq_ptr_impl", scope: !79, type: !1874, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1877 = !DILocalVariable(name: "this", arg: 1, scope: !1873, type: !1878, flags: DIFlagArtificial | DIFlagObjectPointer)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1879 = !DILocation(line: 0, scope: !1873)
!1880 = !DILocalVariable(arg: 2, scope: !1873, type: !318, flags: DIFlagArtificial)
!1881 = !DILocation(line: 241, column: 40, scope: !1873)
!1882 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_", scope: !82, file: !76, line: 176, type: !316, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !315, retainedNodes: !144)
!1883 = !DILocalVariable(name: "this", arg: 1, scope: !1882, type: !1884, flags: DIFlagArtificial | DIFlagObjectPointer)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1885 = !DILocation(line: 0, scope: !1882)
!1886 = !DILocalVariable(name: "__p", arg: 2, scope: !1882, file: !76, line: 176, type: !318)
!1887 = !DILocation(line: 176, column: 31, scope: !1882)
!1888 = !DILocation(line: 176, column: 38, scope: !1882)
!1889 = !DILocation(line: 176, column: 58, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1882, file: !76, line: 176, column: 45)
!1891 = !DILocation(line: 176, column: 47, scope: !1890)
!1892 = !DILocation(line: 176, column: 56, scope: !1890)
!1893 = !DILocation(line: 176, column: 63, scope: !1882)
!1894 = distinct !DISubprogram(name: "tuple<true, true>", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ETnNSt9enable_ifIXclsr17_TupleConstraintsIXT_ES2_S4_EE37__is_implicitly_default_constructibleEEbE4typeELb1EEEv", scope: !85, file: !86, line: 1317, type: !1895, scopeLine: 1319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1898, declaration: !1897, retainedNodes: !144)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !285}
!1897 = !DISubprogram(name: "tuple<true, true>", scope: !85, file: !86, line: 1317, type: !1895, scopeLine: 1317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !1898)
!1898 = !{!1899, !301}
!1899 = !DITemplateValueParameter(name: "_Dummy", type: !57, value: i1 true)
!1900 = !DILocalVariable(name: "this", arg: 1, scope: !1894, type: !1901, flags: DIFlagArtificial | DIFlagObjectPointer)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1902 = !DILocation(line: 0, scope: !1894)
!1903 = !DILocation(line: 1319, column: 4, scope: !1894)
!1904 = !DILocation(line: 1319, column: 19, scope: !1894)
!1905 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !82, file: !76, line: 197, type: !334, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !333, retainedNodes: !144)
!1906 = !DILocalVariable(name: "this", arg: 1, scope: !1905, type: !1884, flags: DIFlagArtificial | DIFlagObjectPointer)
!1907 = !DILocation(line: 0, scope: !1905)
!1908 = !DILocation(line: 197, column: 57, scope: !1905)
!1909 = !DILocation(line: 197, column: 45, scope: !1905)
!1910 = !DILocation(line: 197, column: 38, scope: !1905)
!1911 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev", scope: !89, file: !86, line: 280, type: !256, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !255, retainedNodes: !144)
!1912 = !DILocalVariable(name: "this", arg: 1, scope: !1911, type: !1913, flags: DIFlagArtificial | DIFlagObjectPointer)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocation(line: 281, column: 9, scope: !1911)
!1916 = !DILocation(line: 281, column: 23, scope: !1911)
!1917 = !DILocation(line: 281, column: 33, scope: !1911)
!1918 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev", scope: !92, file: !86, line: 503, type: !176, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !175, retainedNodes: !144)
!1919 = !DILocalVariable(name: "this", arg: 1, scope: !1918, type: !1920, flags: DIFlagArtificial | DIFlagObjectPointer)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1921 = !DILocation(line: 0, scope: !1918)
!1922 = !DILocation(line: 504, column: 9, scope: !1918)
!1923 = !DILocation(line: 504, column: 19, scope: !1918)
!1924 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev", scope: !200, file: !86, line: 190, type: !204, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !203, retainedNodes: !144)
!1925 = !DILocalVariable(name: "this", arg: 1, scope: !1924, type: !1926, flags: DIFlagArtificial | DIFlagObjectPointer)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1927 = !DILocation(line: 0, scope: !1924)
!1928 = !DILocation(line: 191, column: 9, scope: !1924)
!1929 = !DILocation(line: 191, column: 26, scope: !1924)
!1930 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev", scope: !95, file: !86, line: 81, type: !114, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !113, retainedNodes: !144)
!1931 = !DILocalVariable(name: "this", arg: 1, scope: !1930, type: !1932, flags: DIFlagArtificial | DIFlagObjectPointer)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1933 = !DILocation(line: 0, scope: !1930)
!1934 = !DILocation(line: 82, column: 26, scope: !1930)
!1935 = distinct !DISubprogram(name: "get<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !8, file: !86, line: 1803, type: !1936, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1948, retainedNodes: !144)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1938, !295}
!1938 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, tuple<_State *, default_delete<_State> > >", scope: !8, file: !1798, line: 84, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1941, file: !86, line: 1782, baseType: !1944)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !8, file: !86, line: 1778, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !1942, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!1942 = !{!1827, !1943}
!1943 = !DITemplateTypeParameter(name: "_Tp", type: !85)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1945, file: !1798, line: 236, baseType: !109)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !8, file: !1798, line: 235, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !1946, identifier: "_ZTSSt9_Nth_typeILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!1946 = !{!1832, !1947}
!1947 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !277)
!1948 = !{!1827, !276}
!1949 = !DILocalVariable(name: "__t", arg: 1, scope: !1935, file: !86, line: 1803, type: !295)
!1950 = !DILocation(line: 1803, column: 30, scope: !1935)
!1951 = !DILocation(line: 1804, column: 37, scope: !1935)
!1952 = !DILocation(line: 1804, column: 14, scope: !1935)
!1953 = !DILocation(line: 1804, column: 7, scope: !1935)
!1954 = distinct !DISubprogram(name: "__get_helper<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE", scope: !8, file: !86, line: 1787, type: !237, scopeLine: 1788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !1955, retainedNodes: !144)
!1955 = !{!1827, !234, !1956}
!1956 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !197)
!1957 = !DILocalVariable(name: "__t", arg: 1, scope: !1954, file: !86, line: 1787, type: !239)
!1958 = !DILocation(line: 1787, column: 53, scope: !1954)
!1959 = !DILocation(line: 1788, column: 57, scope: !1954)
!1960 = !DILocation(line: 1788, column: 14, scope: !1954)
!1961 = !DILocation(line: 1788, column: 7, scope: !1954)
!1962 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !89, file: !86, line: 269, type: !237, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !236, retainedNodes: !144)
!1963 = !DILocalVariable(name: "__t", arg: 1, scope: !1962, file: !86, line: 269, type: !239)
!1964 = !DILocation(line: 269, column: 28, scope: !1962)
!1965 = !DILocation(line: 269, column: 66, scope: !1962)
!1966 = !DILocation(line: 269, column: 51, scope: !1962)
!1967 = !DILocation(line: 269, column: 44, scope: !1962)
!1968 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !200, file: !86, line: 234, type: !225, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !224, retainedNodes: !144)
!1969 = !DILocalVariable(name: "__b", arg: 1, scope: !1968, file: !86, line: 234, type: !228)
!1970 = !DILocation(line: 234, column: 27, scope: !1968)
!1971 = !DILocation(line: 234, column: 50, scope: !1968)
!1972 = !DILocation(line: 234, column: 54, scope: !1968)
!1973 = !DILocation(line: 234, column: 43, scope: !1968)
!1974 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !75, file: !76, line: 475, type: !403, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !402, retainedNodes: !144)
!1975 = !DILocalVariable(name: "this", arg: 1, scope: !1974, type: !1693, flags: DIFlagArtificial | DIFlagObjectPointer)
!1976 = !DILocation(line: 0, scope: !1974)
!1977 = !DILocation(line: 476, column: 16, scope: !1974)
!1978 = !DILocation(line: 476, column: 21, scope: !1974)
!1979 = !DILocation(line: 476, column: 9, scope: !1974)
!1980 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !98, file: !76, line: 93, type: !105, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !104, retainedNodes: !144)
!1981 = !DILocalVariable(name: "this", arg: 1, scope: !1980, type: !1982, flags: DIFlagArtificial | DIFlagObjectPointer)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1983 = !DILocation(line: 0, scope: !1980)
!1984 = !DILocalVariable(name: "__ptr", arg: 2, scope: !1980, file: !76, line: 93, type: !109)
!1985 = !DILocation(line: 93, column: 23, scope: !1980)
!1986 = !DILocation(line: 99, column: 9, scope: !1980)
!1987 = !DILocation(line: 99, column: 2, scope: !1980)
!1988 = !DILocation(line: 100, column: 7, scope: !1980)
!1989 = distinct !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !82, file: !76, line: 201, type: !343, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !342, retainedNodes: !144)
!1990 = !DILocalVariable(name: "this", arg: 1, scope: !1989, type: !1884, flags: DIFlagArtificial | DIFlagObjectPointer)
!1991 = !DILocation(line: 0, scope: !1989)
!1992 = !DILocation(line: 201, column: 61, scope: !1989)
!1993 = !DILocation(line: 201, column: 49, scope: !1989)
!1994 = !DILocation(line: 201, column: 42, scope: !1989)
!1995 = distinct !DISubprogram(name: "get<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !8, file: !86, line: 1803, type: !1996, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2008, retainedNodes: !144)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1998, !295}
!1998 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, tuple<_State *, default_delete<_State> > >", scope: !8, file: !1798, line: 84, baseType: !2000)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2001, file: !86, line: 1782, baseType: !2004)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !8, file: !86, line: 1778, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !2002, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2002 = !{!2003, !1943}
!2003 = !DITemplateValueParameter(name: "__i", type: !19, value: i64 1)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2005, file: !1798, line: 240, baseType: !98)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !8, file: !1798, line: 239, size: 8, flags: DIFlagTypePassByValue, elements: !144, templateParams: !2006, identifier: "_ZTSSt9_Nth_typeILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2006 = !{!2007, !1947}
!2007 = !DITemplateValueParameter(name: "_Np", type: !19, value: i64 1)
!2008 = !{!2003, !276}
!2009 = !DILocalVariable(name: "__t", arg: 1, scope: !1995, file: !86, line: 1803, type: !295)
!2010 = !DILocation(line: 1803, column: 30, scope: !1995)
!2011 = !DILocation(line: 1804, column: 37, scope: !1995)
!2012 = !DILocation(line: 1804, column: 14, scope: !1995)
!2013 = !DILocation(line: 1804, column: 7, scope: !1995)
!2014 = distinct !DISubprogram(name: "__get_helper<1UL, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE", scope: !8, file: !86, line: 1787, type: !167, scopeLine: 1788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2015, retainedNodes: !144)
!2015 = !{!2003, !164, !1855}
!2016 = !DILocalVariable(name: "__t", arg: 1, scope: !2014, file: !86, line: 1787, type: !169)
!2017 = !DILocation(line: 1787, column: 53, scope: !2014)
!2018 = !DILocation(line: 1788, column: 57, scope: !2014)
!2019 = !DILocation(line: 1788, column: 14, scope: !2014)
!2020 = !DILocation(line: 1788, column: 7, scope: !2014)
!2021 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !92, file: !86, line: 497, type: !167, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !166, retainedNodes: !144)
!2022 = !DILocalVariable(name: "__t", arg: 1, scope: !2021, file: !86, line: 497, type: !169)
!2023 = !DILocation(line: 497, column: 28, scope: !2021)
!2024 = !DILocation(line: 497, column: 66, scope: !2021)
!2025 = !DILocation(line: 497, column: 51, scope: !2021)
!2026 = !DILocation(line: 497, column: 44, scope: !2021)
!2027 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !95, file: !86, line: 125, type: !155, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !154, retainedNodes: !144)
!2028 = !DILocalVariable(name: "__b", arg: 1, scope: !2027, file: !86, line: 125, type: !158)
!2029 = !DILocation(line: 125, column: 27, scope: !2027)
!2030 = !DILocation(line: 125, column: 50, scope: !2027)
!2031 = !DILocation(line: 125, column: 43, scope: !2027)
