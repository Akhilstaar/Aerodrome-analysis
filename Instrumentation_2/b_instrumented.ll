; ModuleID = 'b_out.ll'
source_filename = "b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.thr_args = type { i16 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@counter = dso_local global i64 0, align 8, !dbg !7
@mtx = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !30
@.str = private unnamed_addr constant [32 x i8] c"\0AThread can't be created : [%s]\00", align 1, !dbg !75
@.str.1 = private unnamed_addr constant [46 x i8] c"ERROR: return code from pthread_join() is %d\0A\00", align 1, !dbg !81
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Counter value: \00", align 1, !dbg !86
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !91
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_b.cpp, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1073 {
  %1 = call i64 @pthread_self(), !dbg !1074
  %2 = call i64 @pthread_self(), !dbg !1074
  %3 = call i64 @pthread_self(), !dbg !1074
  call void @logTxnBegin(i64 %2, i32 74), !dbg !1074
  %4 = call i64 @pthread_self(), !dbg !1074
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1074
  %5 = call i64 @pthread_self(), !dbg !1076
  %6 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1076
  %7 = call i64 @pthread_self(), !dbg !1074
  %8 = call i64 @pthread_self(), !dbg !1074
  %9 = call i64 @pthread_self(), !dbg !1074
  call void @logThreadEnd(i64 %8, i32 74), !dbg !1074
  %10 = call i64 @pthread_self(), !dbg !1074
  call void @logTxnEnd(i64 %8, i32 74), !dbg !1074
  %11 = call i64 @pthread_self(), !dbg !1074
  ret void, !dbg !1074
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z7thrBodyPv(ptr noundef %0) #4 !dbg !1077 {
  %2 = call i64 @pthread_self()
  %3 = call i64 @pthread_self()
  %4 = call i64 @pthread_self()
  call void @logTxnBegin(i64 %3, i32 0)
  %5 = call i64 @pthread_self()
  %6 = alloca ptr, align 8
  %7 = call i64 @pthread_self()
  %8 = alloca ptr, align 8
  %9 = call i64 @pthread_self()
  %10 = alloca i64, align 8
  %11 = call i64 @pthread_self()
  call void @logWrite(i64 %11, ptr %6, i32 8, i32 0)
  store ptr %0, ptr %6, align 8
  %12 = call i64 @pthread_self(), !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1082, metadata !DIExpression()), !dbg !1083
  %13 = call i64 @pthread_self(), !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1084, metadata !DIExpression()), !dbg !1087
  %14 = call i64 @pthread_self(), !dbg !1081
  call void @logRead(i64 %14, ptr %6, i32 8, i32 25), !dbg !1081
  %15 = load ptr, ptr %6, align 8, !dbg !1081
  %16 = call i64 @pthread_self(), !dbg !1087
  call void @logWrite(i64 %16, ptr %8, i32 8, i32 25), !dbg !1087
  store ptr %15, ptr %8, align 8, !dbg !1087
  %17 = call i64 @pthread_self(), !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1090, metadata !DIExpression()), !dbg !1088
  %18 = call i64 @pthread_self(), !dbg !1088
  call void @logWrite(i64 %18, ptr %10, i32 8, i32 26), !dbg !1088
  store i64 0, ptr %10, align 8, !dbg !1088
  %19 = call i64 @pthread_self(), !dbg !1091
  br label %20, !dbg !1091

20:                                               ; preds = %40, %1
  %21 = call i64 @pthread_self(), !dbg !1092
  call void @logRead(i64 %21, ptr %10, i32 8, i32 26), !dbg !1092
  %22 = load i64, ptr %10, align 8, !dbg !1092
  %23 = call i64 @pthread_self(), !dbg !1094
  %24 = icmp ult i64 %22, 100, !dbg !1094
  %25 = call i64 @pthread_self(), !dbg !1095
  br i1 %24, label %26, label %47, !dbg !1095

26:                                               ; preds = %20
  %27 = call i64 @pthread_self(), !dbg !1096
  call void @logAcquire(i64 %27, ptr @mtx, i32 28), !dbg !1096
  %28 = call i32 @pthread_mutex_lock(ptr noundef @mtx) #3, !dbg !1096
  %29 = call i64 @pthread_self(), !dbg !1098
  call void @logRead(i64 %29, ptr @counter, i32 8, i32 29), !dbg !1098
  %30 = load i64, ptr @counter, align 8, !dbg !1098
  %31 = call i64 @pthread_self(), !dbg !1098
  %32 = add i64 %30, 1, !dbg !1098
  %33 = call i64 @pthread_self(), !dbg !1098
  call void @logWrite(i64 %33, ptr @counter, i32 8, i32 29), !dbg !1098
  store i64 %32, ptr @counter, align 8, !dbg !1098
  %34 = call i64 @pthread_self(), !dbg !1099
  %35 = call i32 @pthread_mutex_unlock(ptr noundef @mtx) #3, !dbg !1099
  %36 = call i64 @pthread_self(), !dbg !1100
  %37 = call i64 @pthread_self(), !dbg !1100
  %38 = call i64 @pthread_self(), !dbg !1100
  call void @logRelease(i64 %37, ptr @mtx, i32 30), !dbg !1100
  %39 = call i64 @pthread_self(), !dbg !1100
  br label %40, !dbg !1100

40:                                               ; preds = %26
  %41 = call i64 @pthread_self(), !dbg !1101
  call void @logRead(i64 %41, ptr %10, i32 8, i32 26), !dbg !1101
  %42 = load i64, ptr %10, align 8, !dbg !1101
  %43 = call i64 @pthread_self(), !dbg !1101
  %44 = add i64 %42, 1, !dbg !1101
  %45 = call i64 @pthread_self(), !dbg !1101
  call void @logWrite(i64 %45, ptr %10, i32 8, i32 26), !dbg !1101
  store i64 %44, ptr %10, align 8, !dbg !1101
  %46 = call i64 @pthread_self(), !dbg !1102
  br label %20, !dbg !1102, !llvm.loop !1103

47:                                               ; preds = %20
  %48 = call i64 @pthread_self(), !dbg !1106
  call void @pthread_exit(ptr noundef null) #10, !dbg !1106
  %49 = call i64 @pthread_self(), !dbg !1106
  unreachable, !dbg !1106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #6

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #7 !dbg !1107 {
  %1 = call i64 @pthread_self()
  %2 = call i64 @pthread_self()
  %3 = call i64 @pthread_self()
  call void @logTxnBegin(i64 %2, i32 0)
  %4 = call i64 @pthread_self()
  call void @logFork(i64 0, i64 %2, i32 0)
  %5 = call i64 @pthread_self()
  %6 = alloca i32, align 4
  %7 = call i64 @pthread_self()
  %8 = alloca i32, align 4
  %9 = call i64 @pthread_self()
  %10 = alloca [2 x i64], align 16
  %11 = call i64 @pthread_self()
  %12 = alloca ptr, align 8
  %13 = call i64 @pthread_self()
  %14 = alloca %union.pthread_attr_t, align 8
  %15 = call i64 @pthread_self()
  %16 = alloca [2 x %struct.thr_args], align 2
  %17 = call i64 @pthread_self()
  %18 = alloca i32, align 4
  %19 = call i64 @pthread_self()
  call void @logWrite(i64 %19, ptr %6, i32 4, i32 0)
  store i32 0, ptr %6, align 4
  %20 = call i64 @pthread_self(), !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1109, metadata !DIExpression()), !dbg !1110
  %21 = call i64 @pthread_self(), !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1111, metadata !DIExpression()), !dbg !1114
  %22 = call i64 @pthread_self(), !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1115, metadata !DIExpression()), !dbg !1116
  %23 = call i64 @pthread_self(), !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1117, metadata !DIExpression()), !dbg !1126
  %24 = call i64 @pthread_self(), !dbg !1108
  %25 = call i32 @pthread_attr_init(ptr noundef %14) #3, !dbg !1108
  %26 = call i64 @pthread_self(), !dbg !1127
  %27 = call i32 @pthread_attr_setdetachstate(ptr noundef %14, i32 noundef 0) #3, !dbg !1127
  %28 = call i64 @pthread_self(), !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1129, metadata !DIExpression()), !dbg !1128
  %29 = call i64 @pthread_self(), !dbg !1128
  call void @llvm.memset.p0.i64(ptr align 2 %16, i8 0, i64 4, i1 false), !dbg !1128
  %30 = call i64 @pthread_self(), !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1132, metadata !DIExpression()), !dbg !1131
  %31 = call i64 @pthread_self(), !dbg !1131
  call void @logWrite(i64 %31, ptr %18, i32 4, i32 47), !dbg !1131
  store i32 0, ptr %18, align 4, !dbg !1131
  %32 = call i64 @pthread_self(), !dbg !1133
  br label %33, !dbg !1133

33:                                               ; preds = %85, %0
  %34 = call i64 @pthread_self(), !dbg !1134
  call void @logRead(i64 %34, ptr %18, i32 4, i32 48), !dbg !1134
  %35 = load i32, ptr %18, align 4, !dbg !1134
  %36 = call i64 @pthread_self(), !dbg !1135
  %37 = icmp ult i32 %35, 2, !dbg !1135
  %38 = call i64 @pthread_self(), !dbg !1133
  br i1 %37, label %39, label %92, !dbg !1133

39:                                               ; preds = %33
  %40 = call i64 @pthread_self(), !dbg !1136
  call void @logRead(i64 %40, ptr %18, i32 4, i32 50), !dbg !1136
  %41 = load i32, ptr %18, align 4, !dbg !1136
  %42 = call i64 @pthread_self(), !dbg !1136
  %43 = trunc i32 %41 to i16, !dbg !1136
  %44 = call i64 @pthread_self(), !dbg !1138
  call void @logRead(i64 %44, ptr %18, i32 4, i32 50), !dbg !1138
  %45 = load i32, ptr %18, align 4, !dbg !1138
  %46 = call i64 @pthread_self(), !dbg !1139
  %47 = zext i32 %45 to i64, !dbg !1139
  %48 = call i64 @pthread_self(), !dbg !1139
  %49 = getelementptr inbounds [2 x %struct.thr_args], ptr %16, i64 0, i64 %47, !dbg !1139
  %50 = call i64 @pthread_self(), !dbg !1140
  %51 = getelementptr inbounds %struct.thr_args, ptr %49, i32 0, i32 0, !dbg !1140
  %52 = call i64 @pthread_self(), !dbg !1141
  call void @logWrite(i64 %52, ptr %51, i32 2, i32 50), !dbg !1141
  store i16 %43, ptr %51, align 2, !dbg !1141
  %53 = call i64 @pthread_self(), !dbg !1142
  call void @logRead(i64 %53, ptr %18, i32 4, i32 52), !dbg !1142
  %54 = load i32, ptr %18, align 4, !dbg !1142
  %55 = call i64 @pthread_self(), !dbg !1143
  %56 = zext i32 %54 to i64, !dbg !1143
  %57 = call i64 @pthread_self(), !dbg !1143
  %58 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 %56, !dbg !1143
  %59 = call i64 @pthread_self(), !dbg !1144
  %60 = getelementptr inbounds [2 x %struct.thr_args], ptr %16, i64 0, i64 0, !dbg !1144
  %61 = call i64 @pthread_self(), !dbg !1145
  call void @logRead(i64 %61, ptr %18, i32 4, i32 52), !dbg !1145
  %62 = load i32, ptr %18, align 4, !dbg !1145
  %63 = call i64 @pthread_self(), !dbg !1146
  %64 = zext i32 %62 to i64, !dbg !1146
  %65 = call i64 @pthread_self(), !dbg !1146
  %66 = getelementptr inbounds %struct.thr_args, ptr %60, i64 %64, !dbg !1146
  %67 = call i64 @pthread_self(), !dbg !1147
  %68 = call i32 @pthread_create(ptr noundef %58, ptr noundef %14, ptr noundef @_Z7thrBodyPv, ptr noundef %66) #3, !dbg !1147
  %69 = call i64 @pthread_self(), !dbg !1148
  call void @logFork(i64 %67, i64 0, i32 52), !dbg !1148
  %70 = call i64 @pthread_self(), !dbg !1148
  call void @logWrite(i64 %70, ptr %8, i32 4, i32 51), !dbg !1148
  store i32 %68, ptr %8, align 4, !dbg !1148
  %71 = call i64 @pthread_self(), !dbg !1149
  call void @logRead(i64 %71, ptr %8, i32 4, i32 53), !dbg !1149
  %72 = load i32, ptr %8, align 4, !dbg !1149
  %73 = call i64 @pthread_self(), !dbg !1151
  %74 = icmp ne i32 %72, 0, !dbg !1151
  %75 = call i64 @pthread_self(), !dbg !1152
  br i1 %74, label %76, label %85, !dbg !1152

76:                                               ; preds = %39
  %77 = call i64 @pthread_self(), !dbg !1153
  call void @logRead(i64 %77, ptr %8, i32 4, i32 55), !dbg !1153
  %78 = load i32, ptr %8, align 4, !dbg !1153
  %79 = call i64 @pthread_self(), !dbg !1155
  %80 = call ptr @strerror(i32 noundef %78) #3, !dbg !1155
  %81 = call i64 @pthread_self(), !dbg !1156
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %80), !dbg !1156
  %83 = call i64 @pthread_self(), !dbg !1157
  call void @exit(i32 noundef 1) #11, !dbg !1157
  %84 = call i64 @pthread_self(), !dbg !1157
  unreachable, !dbg !1157

85:                                               ; preds = %39
  %86 = call i64 @pthread_self(), !dbg !1158
  call void @logRead(i64 %86, ptr %18, i32 4, i32 58), !dbg !1158
  %87 = load i32, ptr %18, align 4, !dbg !1158
  %88 = call i64 @pthread_self(), !dbg !1158
  %89 = add i32 %87, 1, !dbg !1158
  %90 = call i64 @pthread_self(), !dbg !1158
  call void @logWrite(i64 %90, ptr %18, i32 4, i32 58), !dbg !1158
  store i32 %89, ptr %18, align 4, !dbg !1158
  %91 = call i64 @pthread_self(), !dbg !1133
  br label %33, !dbg !1133, !llvm.loop !1159

92:                                               ; preds = %33
  %93 = call i64 @pthread_self(), !dbg !1161
  %94 = call i32 @pthread_attr_destroy(ptr noundef %14) #3, !dbg !1161
  %95 = call i64 @pthread_self(), !dbg !1162
  call void @logWrite(i64 %95, ptr %18, i32 4, i32 62), !dbg !1162
  store i32 0, ptr %18, align 4, !dbg !1162
  %96 = call i64 @pthread_self(), !dbg !1163
  br label %97, !dbg !1163

97:                                               ; preds = %127, %92
  %98 = call i64 @pthread_self(), !dbg !1164
  call void @logRead(i64 %98, ptr %18, i32 4, i32 63), !dbg !1164
  %99 = load i32, ptr %18, align 4, !dbg !1164
  %100 = call i64 @pthread_self(), !dbg !1165
  %101 = icmp ult i32 %99, 2, !dbg !1165
  %102 = call i64 @pthread_self(), !dbg !1163
  br i1 %101, label %103, label %134, !dbg !1163

103:                                              ; preds = %97
  %104 = call i64 @pthread_self(), !dbg !1166
  call void @logRead(i64 %104, ptr %18, i32 4, i32 65), !dbg !1166
  %105 = load i32, ptr %18, align 4, !dbg !1166
  %106 = call i64 @pthread_self(), !dbg !1168
  %107 = zext i32 %105 to i64, !dbg !1168
  %108 = call i64 @pthread_self(), !dbg !1168
  %109 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 %107, !dbg !1168
  %110 = call i64 @pthread_self(), !dbg !1168
  call void @logRead(i64 %110, ptr %109, i32 8, i32 65), !dbg !1168
  %111 = load i64, ptr %109, align 8, !dbg !1168
  %112 = call i64 @pthread_self(), !dbg !1169
  call void @logJoin(i64 %112, i64 %111, i32 65), !dbg !1169
  %113 = call i32 @pthread_join(i64 noundef %111, ptr noundef %12), !dbg !1169
  %114 = call i64 @pthread_self(), !dbg !1170
  call void @logWrite(i64 %114, ptr %8, i32 4, i32 65), !dbg !1170
  store i32 %113, ptr %8, align 4, !dbg !1170
  %115 = call i64 @pthread_self(), !dbg !1171
  call void @logRead(i64 %115, ptr %8, i32 4, i32 66), !dbg !1171
  %116 = load i32, ptr %8, align 4, !dbg !1171
  %117 = call i64 @pthread_self(), !dbg !1171
  %118 = icmp ne i32 %116, 0, !dbg !1171
  %119 = call i64 @pthread_self(), !dbg !1173
  br i1 %118, label %120, label %127, !dbg !1173

120:                                              ; preds = %103
  %121 = call i64 @pthread_self(), !dbg !1174
  call void @logRead(i64 %121, ptr %8, i32 4, i32 68), !dbg !1174
  %122 = load i32, ptr %8, align 4, !dbg !1174
  %123 = call i64 @pthread_self(), !dbg !1176
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %122), !dbg !1176
  %125 = call i64 @pthread_self(), !dbg !1177
  call void @exit(i32 noundef 1) #11, !dbg !1177
  %126 = call i64 @pthread_self(), !dbg !1177
  unreachable, !dbg !1177

127:                                              ; preds = %103
  %128 = call i64 @pthread_self(), !dbg !1178
  call void @logRead(i64 %128, ptr %18, i32 4, i32 71), !dbg !1178
  %129 = load i32, ptr %18, align 4, !dbg !1178
  %130 = call i64 @pthread_self(), !dbg !1178
  %131 = add i32 %129, 1, !dbg !1178
  %132 = call i64 @pthread_self(), !dbg !1178
  call void @logWrite(i64 %132, ptr %18, i32 4, i32 71), !dbg !1178
  store i32 %131, ptr %18, align 4, !dbg !1178
  %133 = call i64 @pthread_self(), !dbg !1163
  br label %97, !dbg !1163, !llvm.loop !1179

134:                                              ; preds = %97
  %135 = call i64 @pthread_self(), !dbg !1181
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !1181
  %137 = call i64 @pthread_self(), !dbg !1182
  call void @logRead(i64 %137, ptr @counter, i32 8, i32 74), !dbg !1182
  %138 = load i64, ptr @counter, align 8, !dbg !1182
  %139 = call i64 @pthread_self(), !dbg !1183
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef %138), !dbg !1183
  %141 = call i64 @pthread_self(), !dbg !1184
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef @.str.3), !dbg !1184
  %143 = call i64 @pthread_self(), !dbg !1185
  %144 = call i64 @pthread_self(), !dbg !1185
  %145 = call i64 @pthread_self(), !dbg !1185
  call void @logTxnEnd(i64 %144, i32 76), !dbg !1185
  %146 = call i64 @pthread_self(), !dbg !1185
  ret i32 0, !dbg !1185
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #2

declare i32 @pthread_join(i64 noundef, ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_b.cpp() #0 section ".text.startup" !dbg !1186 {
  %1 = call i64 @pthread_self(), !dbg !1188
  %2 = call i64 @pthread_self(), !dbg !1188
  %3 = call i64 @pthread_self(), !dbg !1188
  call void @logTxnBegin(i64 %2, i32 0), !dbg !1188
  %4 = call i64 @pthread_self(), !dbg !1188
  call void @__cxx_global_var_init(), !dbg !1188
  %5 = call i64 @pthread_self()
  %6 = call i64 @pthread_self()
  %7 = call i64 @pthread_self()
  call void @logThreadEnd(i64 %6, i32 0)
  %8 = call i64 @pthread_self()
  call void @logTxnEnd(i64 %6, i32 0)
  %9 = call i64 @pthread_self()
  ret void
}

declare i64 @pthread_self()

declare void @logRead(i64, ptr, i32, i32)

declare void @logWrite(i64, ptr, i32, i32)

declare void @logAcquire(i64, ptr, i32)

declare void @logRelease(i64, ptr, i32)

declare void @logFork(i64, i64, i32)

declare void @logJoin(i64, i64, i32)

declare void @logThreadEnd(i64, i32)

declare void @logTxnBegin(i64, i32)

declare void @logTxnEnd(i64, i32)

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071}
!llvm.ident = !{!1072}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 639, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 233, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "counter", scope: !9, file: !10, line: 15, type: !67, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: false, flags: "/usr/lib/llvm-18/bin/clang -S -emit-llvm -g -O0 b.cpp -o b_out.ll", runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !18, globals: !29, imports: !96, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "b.cpp", directory: "/media/goutam/STUDY MATERIALS/8th sem/Analysis of Concurrent Programs/project/Aerodrome-analysis/Instrumentation_2", checksumkind: CSK_MD5, checksum: "a9e58063b89ac8e5e90d92df3b17011a")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 37, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1, isUnsigned: true)
!18 = !{!19, !28}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thr_args", file: !10, line: 18, size: 16, flags: DIFlagTypePassByValue, elements: !21, identifier: "_ZTS8thr_args")
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !20, file: !10, line: 20, baseType: !23, size: 16)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !24, line: 25, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !{!0, !7, !30, !64, !70, !75, !81, !86, !91}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "mtx", scope: !9, file: !10, line: 16, type: !32, isLocal: false, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !33, line: 72, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !35, identifier: "_ZTS15pthread_mutex_t")
!35 = !{!36, !57, !62}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !34, file: !33, line: 69, baseType: !37, size: 320)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !38, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !39, identifier: "_ZTS17__pthread_mutex_s")
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!39 = !{!40, !42, !43, !44, !45, !46, !48, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !37, file: !38, line: 24, baseType: !41, size: 32)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !37, file: !38, line: 25, baseType: !14, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !37, file: !38, line: 26, baseType: !41, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !37, file: !38, line: 28, baseType: !14, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !37, file: !38, line: 32, baseType: !41, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !37, file: !38, line: 34, baseType: !47, size: 16, offset: 160)
!47 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !37, file: !38, line: 35, baseType: !47, size: 16, offset: 176)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !37, file: !38, line: 36, baseType: !50, size: 128, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !51, line: 55, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !51, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !53, identifier: "_ZTS23__pthread_internal_list")
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !52, file: !51, line: 53, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !52, file: !51, line: 54, baseType: !55, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !34, file: !33, line: 70, baseType: !58, size: 320)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 320, elements: !60)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !{!61}
!61 = !DISubrange(count: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !34, file: !33, line: 71, baseType: !63, size: 64)
!63 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 100, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "ITERS", scope: !9, file: !10, line: 14, type: !66, isLocal: true, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !69)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "NUM_THREADS", scope: !9, file: !10, line: 13, type: !72, isLocal: true, isDefinition: true)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 26, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 42, baseType: !14)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !10, line: 55, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !79)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!79 = !{!80}
!80 = !DISubrange(count: 32)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !10, line: 68, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 368, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 46)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !10, line: 74, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 16)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !10, line: 74, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 2)
!96 = !{!97, !103, !106, !109, !112, !115, !117, !119, !121, !124, !127, !130, !133, !136, !138, !142, !143, !144, !145, !147, !149, !151, !153, !156, !159, !162, !165, !168, !170, !176, !180, !186, !190, !196, !201, !203, !209, !213, !217, !227, !229, !233, !237, !241, !246, !250, !254, !258, !262, !270, !274, !278, !280, !284, !288, !292, !298, !302, !306, !308, !316, !320, !328, !330, !334, !338, !342, !346, !351, !356, !361, !362, !363, !364, !366, !367, !368, !369, !370, !371, !372, !378, !382, !388, !392, !396, !400, !404, !406, !408, !412, !416, !420, !424, !428, !430, !432, !434, !438, !442, !446, !448, !450, !467, !470, !475, !483, !488, !492, !496, !500, !504, !506, !508, !512, !518, !522, !528, !534, !536, !540, !544, !548, !552, !563, !565, !569, !573, !577, !579, !583, !587, !591, !593, !595, !599, !607, !611, !615, !619, !621, !627, !629, !635, !639, !643, !647, !651, !655, !659, !661, !663, !667, !671, !675, !677, !681, !685, !687, !689, !693, !697, !701, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !719, !723, !727, !731, !736, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !770, !774, !780, !785, !789, !791, !793, !795, !797, !804, !808, !812, !816, !820, !824, !828, !832, !834, !838, !844, !848, !852, !854, !856, !860, !864, !866, !868, !870, !872, !874, !876, !878, !882, !886, !890, !894, !898, !902, !904, !908, !912, !916, !920, !922, !924, !928, !932, !933, !934, !935, !936, !937, !943, !946, !947, !949, !951, !953, !955, !959, !961, !963, !965, !967, !969, !971, !973, !975, !979, !983, !985, !989, !993, !998, !1002, !1003, !1008, !1012, !1017, !1022, !1026, !1032, !1036, !1038, !1042, !1049, !1054, !1059}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !102, line: 47)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !99, line: 24, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !26, line: 37, baseType: !101)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdint", directory: "")
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !104, file: !102, line: 48)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !99, line: 25, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !26, line: 39, baseType: !47)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !107, file: !102, line: 49)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !99, line: 26, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !26, line: 41, baseType: !41)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !110, file: !102, line: 50)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !99, line: 27, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !26, line: 44, baseType: !63)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !113, file: !102, line: 52)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !114, line: 58, baseType: !101)
!114 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !116, file: !102, line: 53)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !114, line: 60, baseType: !63)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !118, file: !102, line: 54)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !114, line: 61, baseType: !63)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !102, line: 55)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !114, line: 62, baseType: !63)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !102, line: 57)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !114, line: 43, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !26, line: 52, baseType: !100)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !125, file: !102, line: 58)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !114, line: 44, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !26, line: 54, baseType: !105)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !128, file: !102, line: 59)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !114, line: 45, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !26, line: 56, baseType: !108)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !131, file: !102, line: 60)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !114, line: 46, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !26, line: 58, baseType: !111)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !134, file: !102, line: 62)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !114, line: 101, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !26, line: 72, baseType: !63)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !137, file: !102, line: 63)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !114, line: 87, baseType: !63)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !139, file: !102, line: 65)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 38, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !23, file: !102, line: 66)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !73, file: !102, line: 67)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !67, file: !102, line: 68)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !146, file: !102, line: 70)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !114, line: 71, baseType: !141)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !102, line: 71)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !114, line: 73, baseType: !69)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !150, file: !102, line: 72)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !114, line: 74, baseType: !69)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !152, file: !102, line: 73)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !114, line: 75, baseType: !69)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !154, file: !102, line: 75)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !114, line: 49, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !26, line: 53, baseType: !140)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !157, file: !102, line: 76)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !114, line: 50, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !26, line: 55, baseType: !25)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !160, file: !102, line: 77)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !114, line: 51, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !26, line: 57, baseType: !74)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !163, file: !102, line: 78)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !114, line: 52, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !26, line: 59, baseType: !68)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !166, file: !102, line: 80)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !114, line: 102, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !26, line: 73, baseType: !69)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !102, line: 81)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !114, line: 90, baseType: !69)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !171, file: !175, line: 52)
!171 = !DISubprogram(name: "abs", scope: !172, file: !172, line: 848, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!173 = !DISubroutineType(types: !174)
!174 = !{!41, !41}
!175 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/std_abs.h", directory: "")
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !179, line: 127)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !172, line: 63, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!179 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdlib", directory: "")
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !179, line: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !172, line: 71, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !183, identifier: "_ZTS6ldiv_t")
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !182, file: !172, line: 69, baseType: !63, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !182, file: !172, line: 70, baseType: !63, size: 64, offset: 64)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !187, file: !179, line: 130)
!187 = !DISubprogram(name: "abort", scope: !172, file: !172, line: 598, type: !188, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{null}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !191, file: !179, line: 132)
!191 = !DISubprogram(name: "aligned_alloc", scope: !172, file: !172, line: 592, type: !192, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DISubroutineType(types: !193)
!193 = !{!28, !194, !194}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 18, baseType: !69)
!195 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !179, line: 134)
!197 = !DISubprogram(name: "atexit", scope: !172, file: !172, line: 602, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!41, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !179, line: 137)
!202 = !DISubprogram(name: "at_quick_exit", scope: !172, file: !172, line: 607, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !204, file: !179, line: 140)
!204 = !DISubprogram(name: "atof", scope: !172, file: !172, line: 102, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !208}
!207 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !210, file: !179, line: 141)
!210 = !DISubprogram(name: "atoi", scope: !172, file: !172, line: 105, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!41, !208}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !214, file: !179, line: 142)
!214 = !DISubprogram(name: "atol", scope: !172, file: !172, line: 108, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!63, !208}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !218, file: !179, line: 143)
!218 = !DISubprogram(name: "bsearch", scope: !172, file: !172, line: 828, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!28, !221, !221, !194, !194, !223}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !172, line: 816, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!41, !221, !221}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !228, file: !179, line: 144)
!228 = !DISubprogram(name: "calloc", scope: !172, file: !172, line: 543, type: !192, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !230, file: !179, line: 145)
!230 = !DISubprogram(name: "div", scope: !172, file: !172, line: 860, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{!177, !41, !41}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !234, file: !179, line: 146)
!234 = !DISubprogram(name: "exit", scope: !172, file: !172, line: 624, type: !235, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !41}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !238, file: !179, line: 147)
!238 = !DISubprogram(name: "free", scope: !172, file: !172, line: 555, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !28}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !179, line: 148)
!242 = !DISubprogram(name: "getenv", scope: !172, file: !172, line: 641, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !208}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !179, line: 149)
!247 = !DISubprogram(name: "labs", scope: !172, file: !172, line: 849, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!63, !63}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !179, line: 150)
!251 = !DISubprogram(name: "ldiv", scope: !172, file: !172, line: 862, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!181, !63, !63}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !255, file: !179, line: 151)
!255 = !DISubprogram(name: "malloc", scope: !172, file: !172, line: 540, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!28, !194}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !259, file: !179, line: 153)
!259 = !DISubprogram(name: "mblen", scope: !172, file: !172, line: 930, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!41, !208, !194}
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !263, file: !179, line: 154)
!263 = !DISubprogram(name: "mbstowcs", scope: !172, file: !172, line: 941, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!194, !266, !269, !194}
!266 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !179, line: 155)
!271 = !DISubprogram(name: "mbtowc", scope: !172, file: !172, line: 933, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!41, !266, !269, !194}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !179, line: 157)
!275 = !DISubprogram(name: "qsort", scope: !172, file: !172, line: 838, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !28, !194, !194, !223}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !279, file: !179, line: 160)
!279 = !DISubprogram(name: "quick_exit", scope: !172, file: !172, line: 630, type: !235, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !281, file: !179, line: 163)
!281 = !DISubprogram(name: "rand", scope: !172, file: !172, line: 454, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!41}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !179, line: 164)
!285 = !DISubprogram(name: "realloc", scope: !172, file: !172, line: 551, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!28, !28, !194}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !289, file: !179, line: 165)
!289 = !DISubprogram(name: "srand", scope: !172, file: !172, line: 456, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !14}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !293, file: !179, line: 166)
!293 = !DISubprogram(name: "strtod", scope: !172, file: !172, line: 118, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!207, !269, !296}
!296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !299, file: !179, line: 167)
!299 = !DISubprogram(name: "strtol", scope: !172, file: !172, line: 177, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!63, !269, !296, !41}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !179, line: 168)
!303 = !DISubprogram(name: "strtoul", scope: !172, file: !172, line: 181, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!69, !269, !296, !41}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !307, file: !179, line: 169)
!307 = !DISubprogram(name: "system", scope: !172, file: !172, line: 791, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !179, line: 171)
!309 = !DISubprogram(name: "wcstombs", scope: !172, file: !172, line: 945, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!194, !312, !313, !194}
!312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !245)
!313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !179, line: 172)
!317 = !DISubprogram(name: "wctomb", scope: !172, file: !172, line: 937, type: !318, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!41, !245, !268}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !322, file: !179, line: 200)
!321 = !DINamespace(name: "__gnu_cxx", scope: null)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !172, line: 81, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !324, identifier: "_ZTS7lldiv_t")
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !323, file: !172, line: 79, baseType: !326, size: 64)
!326 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !323, file: !172, line: 80, baseType: !326, size: 64, offset: 64)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !329, file: !179, line: 206)
!329 = !DISubprogram(name: "_Exit", scope: !172, file: !172, line: 636, type: !235, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !331, file: !179, line: 210)
!331 = !DISubprogram(name: "llabs", scope: !172, file: !172, line: 852, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!326, !326}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !335, file: !179, line: 216)
!335 = !DISubprogram(name: "lldiv", scope: !172, file: !172, line: 866, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{!322, !326, !326}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !339, file: !179, line: 227)
!339 = !DISubprogram(name: "atoll", scope: !172, file: !172, line: 113, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!326, !208}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !343, file: !179, line: 228)
!343 = !DISubprogram(name: "strtoll", scope: !172, file: !172, line: 201, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!326, !269, !296, !41}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !347, file: !179, line: 229)
!347 = !DISubprogram(name: "strtoull", scope: !172, file: !172, line: 206, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !269, !296, !41}
!350 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !352, file: !179, line: 231)
!352 = !DISubprogram(name: "strtof", scope: !172, file: !172, line: 124, type: !353, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !269, !296}
!355 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !357, file: !179, line: 232)
!357 = !DISubprogram(name: "strtold", scope: !172, file: !172, line: 127, type: !358, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !269, !296}
!360 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !179, line: 240)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !179, line: 242)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !179, line: 244)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !365, file: !179, line: 245)
!365 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !321, file: !179, line: 213, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !179, line: 246)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !179, line: 248)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !179, line: 249)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !179, line: 250)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !179, line: 251)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !179, line: 252)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !373, file: !377, line: 77)
!373 = !DISubprogram(name: "memchr", scope: !374, file: !374, line: 89, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!375 = !DISubroutineType(types: !376)
!376 = !{!221, !221, !41, !194}
!377 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstring", directory: "")
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !379, file: !377, line: 78)
!379 = !DISubprogram(name: "memcmp", scope: !374, file: !374, line: 64, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DISubroutineType(types: !381)
!381 = !{!41, !221, !221, !194}
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !383, file: !377, line: 79)
!383 = !DISubprogram(name: "memcpy", scope: !374, file: !374, line: 43, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!28, !386, !387, !194}
!386 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !377, line: 80)
!389 = !DISubprogram(name: "memmove", scope: !374, file: !374, line: 47, type: !390, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DISubroutineType(types: !391)
!391 = !{!28, !28, !221, !194}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !393, file: !377, line: 81)
!393 = !DISubprogram(name: "memset", scope: !374, file: !374, line: 61, type: !394, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!28, !28, !41, !194}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !397, file: !377, line: 82)
!397 = !DISubprogram(name: "strcat", scope: !374, file: !374, line: 149, type: !398, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DISubroutineType(types: !399)
!399 = !{!245, !312, !269}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !401, file: !377, line: 83)
!401 = !DISubprogram(name: "strcmp", scope: !374, file: !374, line: 156, type: !402, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DISubroutineType(types: !403)
!403 = !{!41, !208, !208}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !377, line: 84)
!405 = !DISubprogram(name: "strcoll", scope: !374, file: !374, line: 163, type: !402, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !407, file: !377, line: 85)
!407 = !DISubprogram(name: "strcpy", scope: !374, file: !374, line: 141, type: !398, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !377, line: 86)
!409 = !DISubprogram(name: "strcspn", scope: !374, file: !374, line: 293, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!194, !208, !208}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !377, line: 87)
!413 = !DISubprogram(name: "strerror", scope: !374, file: !374, line: 419, type: !414, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{!245, !41}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !377, line: 88)
!417 = !DISubprogram(name: "strlen", scope: !374, file: !374, line: 407, type: !418, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!194, !208}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !377, line: 89)
!421 = !DISubprogram(name: "strncat", scope: !374, file: !374, line: 152, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!245, !312, !269, !194}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !377, line: 90)
!425 = !DISubprogram(name: "strncmp", scope: !374, file: !374, line: 159, type: !426, flags: DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!41, !208, !208, !194}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !377, line: 91)
!429 = !DISubprogram(name: "strncpy", scope: !374, file: !374, line: 144, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !431, file: !377, line: 92)
!431 = !DISubprogram(name: "strspn", scope: !374, file: !374, line: 297, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !433, file: !377, line: 93)
!433 = !DISubprogram(name: "strtok", scope: !374, file: !374, line: 356, type: !398, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !377, line: 94)
!435 = !DISubprogram(name: "strxfrm", scope: !374, file: !374, line: 166, type: !436, flags: DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{!194, !312, !269, !194}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !377, line: 95)
!439 = !DISubprogram(name: "strchr", scope: !374, file: !374, line: 228, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!208, !208, !41}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !443, file: !377, line: 96)
!443 = !DISubprogram(name: "strpbrk", scope: !374, file: !374, line: 305, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!208, !208, !208}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !447, file: !377, line: 97)
!447 = !DISubprogram(name: "strrchr", scope: !374, file: !374, line: 255, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !377, line: 98)
!449 = !DISubprogram(name: "strstr", scope: !374, file: !374, line: 332, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !466, line: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !452, line: 6, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !454, line: 21, baseType: !455)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !456, identifier: "_ZTS11__mbstate_t")
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !455, file: !454, line: 15, baseType: !41, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !455, file: !454, line: 20, baseType: !459, size: 32, offset: 32)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !454, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !460, identifier: "_ZTSN11__mbstate_tUt_E")
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !459, file: !454, line: 18, baseType: !14, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !459, file: !454, line: 19, baseType: !463, size: 32)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 4)
!466 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cwchar", directory: "")
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !466, line: 141)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !469, line: 20, baseType: !14)
!469 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !471, file: !466, line: 143)
!471 = !DISubprogram(name: "btowc", scope: !472, file: !472, line: 285, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!473 = !DISubroutineType(types: !474)
!474 = !{!468, !41}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !466, line: 144)
!476 = !DISubprogram(name: "fgetwc", scope: !472, file: !472, line: 744, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!468, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !481, line: 5, baseType: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !481, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !466, line: 145)
!484 = !DISubprogram(name: "fgetws", scope: !472, file: !472, line: 773, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!267, !266, !41, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !479)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !489, file: !466, line: 146)
!489 = !DISubprogram(name: "fputwc", scope: !472, file: !472, line: 758, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!468, !268, !479}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !493, file: !466, line: 147)
!493 = !DISubprogram(name: "fputws", scope: !472, file: !472, line: 780, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!41, !313, !487}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !497, file: !466, line: 148)
!497 = !DISubprogram(name: "fwide", scope: !472, file: !472, line: 588, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!41, !479, !41}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !501, file: !466, line: 149)
!501 = !DISubprogram(name: "fwprintf", scope: !472, file: !472, line: 595, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!41, !487, !313, null}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !466, line: 150)
!505 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !472, file: !472, line: 657, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !507, file: !466, line: 151)
!507 = !DISubprogram(name: "getwc", scope: !472, file: !472, line: 745, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !466, line: 152)
!509 = !DISubprogram(name: "getwchar", scope: !472, file: !472, line: 751, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!468}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !513, file: !466, line: 153)
!513 = !DISubprogram(name: "mbrlen", scope: !472, file: !472, line: 308, type: !514, flags: DIFlagPrototyped, spFlags: 0)
!514 = !DISubroutineType(types: !515)
!515 = !{!194, !269, !194, !516}
!516 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !519, file: !466, line: 154)
!519 = !DISubprogram(name: "mbrtowc", scope: !472, file: !472, line: 297, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!194, !266, !269, !194, !516}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !466, line: 155)
!523 = !DISubprogram(name: "mbsinit", scope: !472, file: !472, line: 293, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!41, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !466, line: 156)
!529 = !DISubprogram(name: "mbsrtowcs", scope: !472, file: !472, line: 338, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!194, !266, !532, !194, !516}
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !535, file: !466, line: 157)
!535 = !DISubprogram(name: "putwc", scope: !472, file: !472, line: 759, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !466, line: 158)
!537 = !DISubprogram(name: "putwchar", scope: !472, file: !472, line: 765, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!468, !268}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !466, line: 160)
!541 = !DISubprogram(name: "swprintf", scope: !472, file: !472, line: 605, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!41, !266, !194, !313, null}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !466, line: 162)
!545 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !472, file: !472, line: 664, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!41, !313, !313, null}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !466, line: 163)
!549 = !DISubprogram(name: "ungetwc", scope: !472, file: !472, line: 788, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!468, !468, !479}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !466, line: 164)
!553 = !DISubprogram(name: "vfwprintf", scope: !472, file: !472, line: 613, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!41, !487, !313, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !558, identifier: "_ZTS13__va_list_tag")
!558 = !{!559, !560, !561, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !557, file: !10, baseType: !14, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !557, file: !10, baseType: !14, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !557, file: !10, baseType: !28, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !557, file: !10, baseType: !28, size: 64, offset: 128)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !466, line: 166)
!564 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !472, file: !472, line: 711, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !566, file: !466, line: 169)
!566 = !DISubprogram(name: "vswprintf", scope: !472, file: !472, line: 626, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!41, !266, !194, !313, !556}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !466, line: 172)
!570 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !472, file: !472, line: 718, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!41, !313, !313, !556}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !466, line: 174)
!574 = !DISubprogram(name: "vwprintf", scope: !472, file: !472, line: 621, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!41, !313, !556}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !466, line: 176)
!578 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !472, file: !472, line: 715, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !466, line: 178)
!580 = !DISubprogram(name: "wcrtomb", scope: !472, file: !472, line: 302, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!194, !312, !268, !516}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !584, file: !466, line: 179)
!584 = !DISubprogram(name: "wcscat", scope: !472, file: !472, line: 97, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!267, !266, !313}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !588, file: !466, line: 180)
!588 = !DISubprogram(name: "wcscmp", scope: !472, file: !472, line: 106, type: !589, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!41, !314, !314}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !592, file: !466, line: 181)
!592 = !DISubprogram(name: "wcscoll", scope: !472, file: !472, line: 131, type: !589, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !466, line: 182)
!594 = !DISubprogram(name: "wcscpy", scope: !472, file: !472, line: 87, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !466, line: 183)
!596 = !DISubprogram(name: "wcscspn", scope: !472, file: !472, line: 188, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!194, !314, !314}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !600, file: !466, line: 184)
!600 = !DISubprogram(name: "wcsftime", scope: !472, file: !472, line: 852, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!194, !266, !194, !313, !603}
!603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !472, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !466, line: 185)
!608 = !DISubprogram(name: "wcslen", scope: !472, file: !472, line: 223, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!194, !314}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !612, file: !466, line: 186)
!612 = !DISubprogram(name: "wcsncat", scope: !472, file: !472, line: 101, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!267, !266, !313, !194}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !616, file: !466, line: 187)
!616 = !DISubprogram(name: "wcsncmp", scope: !472, file: !472, line: 109, type: !617, flags: DIFlagPrototyped, spFlags: 0)
!617 = !DISubroutineType(types: !618)
!618 = !{!41, !314, !314, !194}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !620, file: !466, line: 188)
!620 = !DISubprogram(name: "wcsncpy", scope: !472, file: !472, line: 92, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !622, file: !466, line: 189)
!622 = !DISubprogram(name: "wcsrtombs", scope: !472, file: !472, line: 344, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!194, !312, !625, !194, !516}
!625 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !628, file: !466, line: 190)
!628 = !DISubprogram(name: "wcsspn", scope: !472, file: !472, line: 192, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !630, file: !466, line: 191)
!630 = !DISubprogram(name: "wcstod", scope: !472, file: !472, line: 378, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!207, !313, !633}
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !466, line: 193)
!636 = !DISubprogram(name: "wcstof", scope: !472, file: !472, line: 383, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!355, !313, !633}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !466, line: 195)
!640 = !DISubprogram(name: "wcstok", scope: !472, file: !472, line: 218, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!267, !266, !313, !633}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !466, line: 196)
!644 = !DISubprogram(name: "wcstol", scope: !472, file: !472, line: 429, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!63, !313, !633, !41}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !466, line: 197)
!648 = !DISubprogram(name: "wcstoul", scope: !472, file: !472, line: 434, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!69, !313, !633, !41}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !466, line: 198)
!652 = !DISubprogram(name: "wcsxfrm", scope: !472, file: !472, line: 135, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!194, !266, !313, !194}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !466, line: 199)
!656 = !DISubprogram(name: "wctob", scope: !472, file: !472, line: 289, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!41, !468}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !466, line: 200)
!660 = !DISubprogram(name: "wmemcmp", scope: !472, file: !472, line: 259, type: !617, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !466, line: 201)
!662 = !DISubprogram(name: "wmemcpy", scope: !472, file: !472, line: 263, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !466, line: 202)
!664 = !DISubprogram(name: "wmemmove", scope: !472, file: !472, line: 268, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DISubroutineType(types: !666)
!666 = !{!267, !267, !314, !194}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !466, line: 203)
!668 = !DISubprogram(name: "wmemset", scope: !472, file: !472, line: 272, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!267, !267, !268, !194}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !466, line: 204)
!672 = !DISubprogram(name: "wprintf", scope: !472, file: !472, line: 602, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!41, !313, null}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !466, line: 205)
!676 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !472, file: !472, line: 661, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !466, line: 206)
!678 = !DISubprogram(name: "wcschr", scope: !472, file: !472, line: 165, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!267, !314, !268}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !466, line: 207)
!682 = !DISubprogram(name: "wcspbrk", scope: !472, file: !472, line: 202, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!267, !314, !314}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !466, line: 208)
!686 = !DISubprogram(name: "wcsrchr", scope: !472, file: !472, line: 175, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !466, line: 209)
!688 = !DISubprogram(name: "wcsstr", scope: !472, file: !472, line: 213, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !466, line: 210)
!690 = !DISubprogram(name: "wmemchr", scope: !472, file: !472, line: 254, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!267, !314, !268, !194}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !694, file: !466, line: 251)
!694 = !DISubprogram(name: "wcstold", scope: !472, file: !472, line: 385, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!360, !313, !633}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !698, file: !466, line: 260)
!698 = !DISubprogram(name: "wcstoll", scope: !472, file: !472, line: 442, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!326, !313, !633, !41}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !702, file: !466, line: 261)
!702 = !DISubprogram(name: "wcstoull", scope: !472, file: !472, line: 449, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{!350, !313, !633, !41}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !466, line: 267)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !466, line: 268)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !466, line: 269)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !466, line: 283)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !466, line: 286)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !466, line: 289)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !466, line: 292)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !466, line: 296)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !466, line: 297)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !466, line: 298)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !717, line: 68)
!716 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !718, file: !717, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!717 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "e8a32dcadc5d06d341e371fb480b7b44")
!718 = !DINamespace(name: "__exception_ptr", scope: !2)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !718, entity: !720, file: !717, line: 84)
!720 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !717, line: 80, type: !721, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !716}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !726, line: 53)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !725, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!725 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!726 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/clocale", directory: "")
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !728, file: !726, line: 54)
!728 = !DISubprogram(name: "setlocale", scope: !725, file: !725, line: 122, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DISubroutineType(types: !730)
!730 = !{!245, !41, !208}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !726, line: 55)
!732 = !DISubprogram(name: "localeconv", scope: !725, file: !725, line: 125, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !739, line: 64)
!737 = !DISubprogram(name: "isalnum", scope: !738, file: !738, line: 108, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!739 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cctype", directory: "")
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !739, line: 65)
!741 = !DISubprogram(name: "isalpha", scope: !738, file: !738, line: 109, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !739, line: 66)
!743 = !DISubprogram(name: "iscntrl", scope: !738, file: !738, line: 110, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !739, line: 67)
!745 = !DISubprogram(name: "isdigit", scope: !738, file: !738, line: 111, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !747, file: !739, line: 68)
!747 = !DISubprogram(name: "isgraph", scope: !738, file: !738, line: 113, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !739, line: 69)
!749 = !DISubprogram(name: "islower", scope: !738, file: !738, line: 112, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !739, line: 70)
!751 = !DISubprogram(name: "isprint", scope: !738, file: !738, line: 114, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !753, file: !739, line: 71)
!753 = !DISubprogram(name: "ispunct", scope: !738, file: !738, line: 115, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !739, line: 72)
!755 = !DISubprogram(name: "isspace", scope: !738, file: !738, line: 116, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !739, line: 73)
!757 = !DISubprogram(name: "isupper", scope: !738, file: !738, line: 117, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !739, line: 74)
!759 = !DISubprogram(name: "isxdigit", scope: !738, file: !738, line: 118, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !761, file: !739, line: 75)
!761 = !DISubprogram(name: "tolower", scope: !738, file: !738, line: 122, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !739, line: 76)
!763 = !DISubprogram(name: "toupper", scope: !738, file: !738, line: 125, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !739, line: 87)
!765 = !DISubprogram(name: "isblank", scope: !738, file: !738, line: 130, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !767, entity: !768, file: !769, line: 58)
!767 = !DINamespace(name: "__gnu_debug", scope: null)
!768 = !DINamespace(name: "__debug", scope: !2)
!769 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "09fce61e0085ea92b4bd81d6cd4dcc16")
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !773, line: 98)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 7, baseType: !482)
!772 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!773 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cstdio", directory: "")
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !773, line: 99)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !776, line: 84, baseType: !777)
!776 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !778, line: 14, baseType: !779)
!778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !778, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !773, line: 101)
!781 = !DISubprogram(name: "clearerr", scope: !776, file: !776, line: 786, type: !782, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !773, line: 102)
!786 = !DISubprogram(name: "fclose", scope: !776, file: !776, line: 178, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!41, !784}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !773, line: 103)
!790 = !DISubprogram(name: "feof", scope: !776, file: !776, line: 788, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !773, line: 104)
!792 = !DISubprogram(name: "ferror", scope: !776, file: !776, line: 790, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !773, line: 105)
!794 = !DISubprogram(name: "fflush", scope: !776, file: !776, line: 230, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !773, line: 106)
!796 = !DISubprogram(name: "fgetc", scope: !776, file: !776, line: 513, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !773, line: 107)
!798 = !DISubprogram(name: "fgetpos", scope: !776, file: !776, line: 760, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!41, !801, !802}
!801 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !784)
!802 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !773, line: 108)
!805 = !DISubprogram(name: "fgets", scope: !776, file: !776, line: 592, type: !806, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DISubroutineType(types: !807)
!807 = !{!245, !312, !41, !801}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !773, line: 109)
!809 = !DISubprogram(name: "fopen", scope: !776, file: !776, line: 258, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!784, !269, !269}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !773, line: 110)
!813 = !DISubprogram(name: "fprintf", scope: !776, file: !776, line: 350, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!41, !801, !269, null}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !773, line: 111)
!817 = !DISubprogram(name: "fputc", scope: !776, file: !776, line: 549, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!41, !41, !784}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !773, line: 112)
!821 = !DISubprogram(name: "fputs", scope: !776, file: !776, line: 655, type: !822, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!41, !269, !801}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !773, line: 113)
!825 = !DISubprogram(name: "fread", scope: !776, file: !776, line: 675, type: !826, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!194, !386, !194, !194, !801}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !773, line: 114)
!829 = !DISubprogram(name: "freopen", scope: !776, file: !776, line: 265, type: !830, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!784, !269, !269, !801}
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !773, line: 115)
!833 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !776, file: !776, line: 434, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !773, line: 116)
!835 = !DISubprogram(name: "fseek", scope: !776, file: !776, line: 713, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!41, !784, !63, !41}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !773, line: 117)
!839 = !DISubprogram(name: "fsetpos", scope: !776, file: !776, line: 765, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!41, !784, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !773, line: 118)
!845 = !DISubprogram(name: "ftell", scope: !776, file: !776, line: 718, type: !846, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DISubroutineType(types: !847)
!847 = !{!63, !784}
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !773, line: 119)
!849 = !DISubprogram(name: "fwrite", scope: !776, file: !776, line: 681, type: !850, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DISubroutineType(types: !851)
!851 = !{!194, !387, !194, !194, !801}
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !773, line: 120)
!853 = !DISubprogram(name: "getc", scope: !776, file: !776, line: 514, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !773, line: 121)
!855 = !DISubprogram(name: "getchar", scope: !776, file: !776, line: 520, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !773, line: 126)
!857 = !DISubprogram(name: "perror", scope: !776, file: !776, line: 804, type: !858, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !208}
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !773, line: 127)
!861 = !DISubprogram(name: "printf", scope: !776, file: !776, line: 356, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!41, !269, null}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !773, line: 128)
!865 = !DISubprogram(name: "putc", scope: !776, file: !776, line: 550, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !773, line: 129)
!867 = !DISubprogram(name: "putchar", scope: !776, file: !776, line: 556, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !773, line: 130)
!869 = !DISubprogram(name: "puts", scope: !776, file: !776, line: 661, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !773, line: 131)
!871 = !DISubprogram(name: "remove", scope: !776, file: !776, line: 152, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !773, line: 132)
!873 = !DISubprogram(name: "rename", scope: !776, file: !776, line: 154, type: !402, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !773, line: 133)
!875 = !DISubprogram(name: "rewind", scope: !776, file: !776, line: 723, type: !782, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !773, line: 134)
!877 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !776, file: !776, line: 437, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !773, line: 135)
!879 = !DISubprogram(name: "setbuf", scope: !776, file: !776, line: 328, type: !880, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !801, !312}
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !773, line: 136)
!883 = !DISubprogram(name: "setvbuf", scope: !776, file: !776, line: 332, type: !884, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DISubroutineType(types: !885)
!885 = !{!41, !801, !312, !41, !194}
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !773, line: 137)
!887 = !DISubprogram(name: "sprintf", scope: !776, file: !776, line: 358, type: !888, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DISubroutineType(types: !889)
!889 = !{!41, !312, !269, null}
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !773, line: 138)
!891 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !776, file: !776, line: 439, type: !892, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DISubroutineType(types: !893)
!893 = !{!41, !269, !269, null}
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !895, file: !773, line: 139)
!895 = !DISubprogram(name: "tmpfile", scope: !776, file: !776, line: 188, type: !896, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!784}
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !773, line: 141)
!899 = !DISubprogram(name: "tmpnam", scope: !776, file: !776, line: 205, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!245, !245}
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !773, line: 143)
!903 = !DISubprogram(name: "ungetc", scope: !776, file: !776, line: 668, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !773, line: 144)
!905 = !DISubprogram(name: "vfprintf", scope: !776, file: !776, line: 365, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!41, !801, !269, !556}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !773, line: 145)
!909 = !DISubprogram(name: "vprintf", scope: !776, file: !776, line: 371, type: !910, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DISubroutineType(types: !911)
!911 = !{!41, !269, !556}
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !773, line: 146)
!913 = !DISubprogram(name: "vsprintf", scope: !776, file: !776, line: 373, type: !914, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DISubroutineType(types: !915)
!915 = !{!41, !312, !269, !556}
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !917, file: !773, line: 175)
!917 = !DISubprogram(name: "snprintf", scope: !776, file: !776, line: 378, type: !918, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DISubroutineType(types: !919)
!919 = !{!41, !312, !194, !269, null}
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !921, file: !773, line: 176)
!921 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !776, file: !776, line: 479, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !923, file: !773, line: 177)
!923 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !776, file: !776, line: 484, type: !910, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !925, file: !773, line: 178)
!925 = !DISubprogram(name: "vsnprintf", scope: !776, file: !776, line: 382, type: !926, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DISubroutineType(types: !927)
!927 = !{!41, !312, !194, !269, !556}
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !929, file: !773, line: 179)
!929 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !776, file: !776, line: 487, type: !930, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{!41, !269, !269, !556}
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !773, line: 185)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !773, line: 186)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !773, line: 187)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !925, file: !773, line: 188)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !773, line: 189)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !938, file: !942, line: 82)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !939, line: 48, baseType: !940)
!939 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!942 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/cwctype", directory: "")
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !942, line: 83)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !945, line: 38, baseType: !69)
!945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !942, line: 84)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !948, file: !942, line: 86)
!948 = !DISubprogram(name: "iswalnum", scope: !945, file: !945, line: 95, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !950, file: !942, line: 87)
!950 = !DISubprogram(name: "iswalpha", scope: !945, file: !945, line: 101, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !952, file: !942, line: 89)
!952 = !DISubprogram(name: "iswblank", scope: !945, file: !945, line: 146, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !954, file: !942, line: 91)
!954 = !DISubprogram(name: "iswcntrl", scope: !945, file: !945, line: 104, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !956, file: !942, line: 92)
!956 = !DISubprogram(name: "iswctype", scope: !945, file: !945, line: 159, type: !957, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DISubroutineType(types: !958)
!958 = !{!41, !468, !944}
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !960, file: !942, line: 93)
!960 = !DISubprogram(name: "iswdigit", scope: !945, file: !945, line: 108, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !962, file: !942, line: 94)
!962 = !DISubprogram(name: "iswgraph", scope: !945, file: !945, line: 112, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !964, file: !942, line: 95)
!964 = !DISubprogram(name: "iswlower", scope: !945, file: !945, line: 117, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !966, file: !942, line: 96)
!966 = !DISubprogram(name: "iswprint", scope: !945, file: !945, line: 120, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !942, line: 97)
!968 = !DISubprogram(name: "iswpunct", scope: !945, file: !945, line: 125, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !970, file: !942, line: 98)
!970 = !DISubprogram(name: "iswspace", scope: !945, file: !945, line: 130, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !972, file: !942, line: 99)
!972 = !DISubprogram(name: "iswupper", scope: !945, file: !945, line: 135, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !974, file: !942, line: 100)
!974 = !DISubprogram(name: "iswxdigit", scope: !945, file: !945, line: 140, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !976, file: !942, line: 101)
!976 = !DISubprogram(name: "towctrans", scope: !939, file: !939, line: 55, type: !977, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DISubroutineType(types: !978)
!978 = !{!468, !468, !938}
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !980, file: !942, line: 102)
!980 = !DISubprogram(name: "towlower", scope: !945, file: !945, line: 166, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DISubroutineType(types: !982)
!982 = !{!468, !468}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !984, file: !942, line: 103)
!984 = !DISubprogram(name: "towupper", scope: !945, file: !945, line: 169, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !986, file: !942, line: 104)
!986 = !DISubprogram(name: "wctrans", scope: !939, file: !939, line: 52, type: !987, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DISubroutineType(types: !988)
!988 = !{!938, !208}
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !990, file: !942, line: 105)
!990 = !DISubprogram(name: "wctype", scope: !945, file: !945, line: 155, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!944, !208}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !997, line: 60)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !995, line: 7, baseType: !996)
!995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !26, line: 156, baseType: !63)
!997 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/ctime", directory: "")
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !997, line: 61)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1000, line: 10, baseType: !1001)
!1000 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !26, line: 160, baseType: !63)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !606, file: !997, line: 62)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !997, line: 64)
!1004 = !DISubprogram(name: "clock", scope: !1005, file: !1005, line: 72, type: !1006, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!994}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !997, line: 65)
!1009 = !DISubprogram(name: "difftime", scope: !1005, file: !1005, line: 79, type: !1010, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!207, !999, !999}
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1013, file: !997, line: 66)
!1013 = !DISubprogram(name: "mktime", scope: !1005, file: !1005, line: 83, type: !1014, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!999, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1018, file: !997, line: 67)
!1018 = !DISubprogram(name: "time", scope: !1005, file: !1005, line: 76, type: !1019, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!999, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1023, file: !997, line: 68)
!1023 = !DISubprogram(name: "asctime", scope: !1005, file: !1005, line: 179, type: !1024, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!245, !604}
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1027, file: !997, line: 69)
!1027 = !DISubprogram(name: "ctime", scope: !1005, file: !1005, line: 183, type: !1028, flags: DIFlagPrototyped, spFlags: 0)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!245, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !997, line: 70)
!1033 = !DISubprogram(name: "gmtime", scope: !1005, file: !1005, line: 132, type: !1034, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1016, !1030}
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !997, line: 71)
!1037 = !DISubprogram(name: "localtime", scope: !1005, file: !1005, line: 136, type: !1034, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !997, line: 72)
!1039 = !DISubprogram(name: "strftime", scope: !1005, file: !1005, line: 100, type: !1040, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!194, !312, !194, !269, !603}
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1043, file: !997, line: 79)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1044, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !1045, identifier: "_ZTS8timespec")
!1044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1043, file: !1044, line: 16, baseType: !1001, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1043, file: !1044, line: 21, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !26, line: 197, baseType: !63)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1050, file: !997, line: 80)
!1050 = !DISubprogram(name: "timespec_get", scope: !1005, file: !1005, line: 371, type: !1051, flags: DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!41, !1053, !41}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1055, entity: !1056, file: !1058, line: 1428)
!1055 = !DINamespace(name: "chrono", scope: !2)
!1056 = !DINamespace(name: "chrono_literals", scope: !1057, exportSymbols: true)
!1057 = !DINamespace(name: "literals", scope: !2, exportSymbols: true)
!1058 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/chrono.h", directory: "")
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1060, file: !10, line: 10)
!1060 = !DIGlobalVariable(name: "cout", linkageName: "_ZSt4cout", scope: !2, file: !3, line: 61, type: !1061, isLocal: false, isDefinition: false)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !1062, line: 141, baseType: !1063)
!1062 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/iosfwd", directory: "")
!1063 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1064, line: 345, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1064 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/12/../../../../include/c++/12/bits/ostream.tcc", directory: "")
!1065 = !{i32 7, !"Dwarf Version", i32 5}
!1066 = !{i32 2, !"Debug Info Version", i32 3}
!1067 = !{i32 1, !"wchar_size", i32 4}
!1068 = !{i32 8, !"PIC Level", i32 2}
!1069 = !{i32 7, !"PIE Level", i32 2}
!1070 = !{i32 7, !"uwtable", i32 2}
!1071 = !{i32 7, !"frame-pointer", i32 2}
!1072 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1073 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !10, file: !10, type: !188, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9)
!1074 = !DILocation(line: 74, column: 25, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 0)
!1076 = !DILocation(line: 0, scope: !1073)
!1077 = distinct !DISubprogram(name: "thrBody", linkageName: "_Z7thrBodyPv", scope: !10, file: !10, line: 23, type: !1078, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!28, !28}
!1080 = !{}
!1081 = !DILocation(line: 25, column: 65, scope: !1077)
!1082 = !DILocalVariable(name: "arguments", arg: 1, scope: !1077, file: !10, line: 23, type: !28)
!1083 = !DILocation(line: 23, column: 21, scope: !1077)
!1084 = !DILocalVariable(name: "tmp", scope: !1077, file: !10, line: 25, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!1087 = !DILocation(line: 25, column: 28, scope: !1077)
!1088 = !DILocation(line: 26, column: 19, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1077, file: !10, line: 26, column: 5)
!1090 = !DILocalVariable(name: "i", scope: !1089, file: !10, line: 26, type: !67)
!1091 = !DILocation(line: 26, column: 10, scope: !1089)
!1092 = !DILocation(line: 26, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !10, line: 26, column: 5)
!1094 = !DILocation(line: 26, column: 28, scope: !1093)
!1095 = !DILocation(line: 26, column: 5, scope: !1089)
!1096 = !DILocation(line: 28, column: 9, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !10, line: 27, column: 5)
!1098 = !DILocation(line: 29, column: 9, scope: !1097)
!1099 = !DILocation(line: 30, column: 9, scope: !1097)
!1100 = !DILocation(line: 31, column: 5, scope: !1097)
!1101 = !DILocation(line: 26, column: 37, scope: !1093)
!1102 = !DILocation(line: 26, column: 5, scope: !1093)
!1103 = distinct !{!1103, !1095, !1104, !1105}
!1104 = !DILocation(line: 31, column: 5, scope: !1089)
!1105 = !{!"llvm.loop.mustprogress"}
!1106 = !DILocation(line: 32, column: 5, scope: !1077)
!1107 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 35, type: !282, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1080)
!1108 = !DILocation(line: 42, column: 5, scope: !1107)
!1109 = !DILocalVariable(name: "error", scope: !1107, file: !10, line: 37, type: !41)
!1110 = !DILocation(line: 37, column: 9, scope: !1107)
!1111 = !DILocalVariable(name: "tid", scope: !1107, file: !10, line: 38, type: !1112)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 128, elements: !94)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !33, line: 27, baseType: !69)
!1114 = !DILocation(line: 38, column: 15, scope: !1107)
!1115 = !DILocalVariable(name: "status", scope: !1107, file: !10, line: 39, type: !28)
!1116 = !DILocation(line: 39, column: 11, scope: !1107)
!1117 = !DILocalVariable(name: "attr", scope: !1107, file: !10, line: 41, type: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !33, line: 62, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !33, line: 56, size: 448, flags: DIFlagTypePassByValue, elements: !1120, identifier: "_ZTS14pthread_attr_t")
!1120 = !{!1121, !1125}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1119, file: !33, line: 58, baseType: !1122, size: 448)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 448, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 56)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1119, file: !33, line: 59, baseType: !63, size: 64)
!1126 = !DILocation(line: 41, column: 20, scope: !1107)
!1127 = !DILocation(line: 43, column: 5, scope: !1107)
!1128 = !DILocation(line: 45, column: 21, scope: !1107)
!1129 = !DILocalVariable(name: "args", scope: !1107, file: !10, line: 45, type: !1130)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !94)
!1131 = !DILocation(line: 47, column: 14, scope: !1107)
!1132 = !DILocalVariable(name: "i", scope: !1107, file: !10, line: 47, type: !73)
!1133 = !DILocation(line: 48, column: 5, scope: !1107)
!1134 = !DILocation(line: 48, column: 12, scope: !1107)
!1135 = !DILocation(line: 48, column: 14, scope: !1107)
!1136 = !DILocation(line: 50, column: 22, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1107, file: !10, line: 49, column: 5)
!1138 = !DILocation(line: 50, column: 14, scope: !1137)
!1139 = !DILocation(line: 50, column: 9, scope: !1137)
!1140 = !DILocation(line: 50, column: 17, scope: !1137)
!1141 = !DILocation(line: 50, column: 20, scope: !1137)
!1142 = !DILocation(line: 52, column: 33, scope: !1137)
!1143 = !DILocation(line: 52, column: 29, scope: !1137)
!1144 = !DILocation(line: 52, column: 73, scope: !1137)
!1145 = !DILocation(line: 52, column: 80, scope: !1137)
!1146 = !DILocation(line: 52, column: 78, scope: !1137)
!1147 = !DILocation(line: 52, column: 13, scope: !1137)
!1148 = !DILocation(line: 51, column: 15, scope: !1137)
!1149 = !DILocation(line: 53, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !10, line: 53, column: 13)
!1151 = !DILocation(line: 53, column: 19, scope: !1150)
!1152 = !DILocation(line: 53, column: 13, scope: !1137)
!1153 = !DILocation(line: 55, column: 65, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !10, line: 54, column: 9)
!1155 = !DILocation(line: 55, column: 56, scope: !1154)
!1156 = !DILocation(line: 55, column: 13, scope: !1154)
!1157 = !DILocation(line: 56, column: 13, scope: !1154)
!1158 = !DILocation(line: 58, column: 10, scope: !1137)
!1159 = distinct !{!1159, !1133, !1160, !1105}
!1160 = !DILocation(line: 59, column: 5, scope: !1107)
!1161 = !DILocation(line: 60, column: 5, scope: !1107)
!1162 = !DILocation(line: 62, column: 7, scope: !1107)
!1163 = !DILocation(line: 63, column: 5, scope: !1107)
!1164 = !DILocation(line: 63, column: 12, scope: !1107)
!1165 = !DILocation(line: 63, column: 14, scope: !1107)
!1166 = !DILocation(line: 65, column: 34, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1107, file: !10, line: 64, column: 5)
!1168 = !DILocation(line: 65, column: 30, scope: !1167)
!1169 = !DILocation(line: 65, column: 17, scope: !1167)
!1170 = !DILocation(line: 65, column: 15, scope: !1167)
!1171 = !DILocation(line: 66, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !10, line: 66, column: 13)
!1173 = !DILocation(line: 66, column: 13, scope: !1167)
!1174 = !DILocation(line: 68, column: 70, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !10, line: 67, column: 9)
!1176 = !DILocation(line: 68, column: 13, scope: !1175)
!1177 = !DILocation(line: 69, column: 13, scope: !1175)
!1178 = !DILocation(line: 71, column: 10, scope: !1167)
!1179 = distinct !{!1179, !1163, !1180, !1105}
!1180 = !DILocation(line: 72, column: 5, scope: !1107)
!1181 = !DILocation(line: 74, column: 10, scope: !1107)
!1182 = !DILocation(line: 74, column: 34, scope: !1107)
!1183 = !DILocation(line: 74, column: 31, scope: !1107)
!1184 = !DILocation(line: 74, column: 42, scope: !1107)
!1185 = !DILocation(line: 76, column: 5, scope: !1107)
!1186 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_b.cpp", scope: !10, file: !10, type: !1187, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9)
!1187 = !DISubroutineType(types: !1080)
!1188 = !DILocation(line: 0, scope: !1186)
