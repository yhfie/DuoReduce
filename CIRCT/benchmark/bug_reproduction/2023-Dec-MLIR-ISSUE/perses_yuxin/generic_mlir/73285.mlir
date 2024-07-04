"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, sym_name = "malloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf16> ()>, linkage = #llvm.linkage<external>, sym_name = "func2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "spirv.Constant"() <{value = 0 : i32}> : () -> i32
    %1 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %2 = "llvm.mlir.constant"() <{value = 64 : index}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 4 : index}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 32 : index}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %7 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %8 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %9 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %10 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %11 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %12 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %13 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %14 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %15 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %16 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %17 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %18 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %19 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %20 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %21 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %22 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %23 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %24 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %25 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %26 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %27 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %28 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %29 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %30 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %31 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %32 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %33 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %34 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %35 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %36 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %37 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %38 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %39 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %40 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %41 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %42 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %43 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %44 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %45 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %46 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %47 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %48 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %49 = "llvm.getelementptr"(%11) <{elem_type = i32, rawConstantIndices = array<i32: 1024>}> : (!llvm.ptr) -> !llvm.ptr
    %50 = "llvm.ptrtoint"(%49) : (!llvm.ptr) -> i64
    %51 = "llvm.add"(%50, %2) : (i64, i64) -> i64
    %52 = "llvm.call"(%51) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %53 = "llvm.ptrtoint"(%52) : (!llvm.ptr) -> i64
    %54 = "llvm.add"(%53, %12) : (i64, i64) -> i64
    %55 = "llvm.urem"(%54, %2) : (i64, i64) -> i64
    %56 = "llvm.sub"(%54, %55) : (i64, i64) -> i64
    %57 = "llvm.inttoptr"(%56) : (i64) -> !llvm.ptr
    %58 = "llvm.getelementptr"(%11) <{elem_type = i32, rawConstantIndices = array<i32: 1024>}> : (!llvm.ptr) -> !llvm.ptr
    %59 = "llvm.ptrtoint"(%58) : (!llvm.ptr) -> i64
    %60 = "llvm.add"(%59, %2) : (i64, i64) -> i64
    %61 = "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %62 = "llvm.ptrtoint"(%61) : (!llvm.ptr) -> i64
    %63 = "llvm.add"(%62, %12) : (i64, i64) -> i64
    %64 = "llvm.urem"(%63, %2) : (i64, i64) -> i64
    %65 = "llvm.sub"(%63, %64) : (i64, i64) -> i64
    %66 = "llvm.inttoptr"(%65) : (i64) -> !llvm.ptr
    %67 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %68 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %69 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %70 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %71 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %72 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %73 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %74 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %75 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %76 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %77 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %78 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %79 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %80 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %81 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %82 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %83 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %84 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %85 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %86 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %87 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %88 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %89 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %90 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %91 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %92 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %93 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %94 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %95 = "llvm.sub"(%2, %6) : (i64, i64) -> i64
    %96 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %97 = "builtin.unrealized_conversion_cast"(%5) : (i64) -> index
    %98 = "builtin.unrealized_conversion_cast"(%4) : (i64) -> index
    %99 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    %100 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %101 = "builtin.unrealized_conversion_cast"(%3) : (i64) -> index
    %102 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> index
    %103 = "llvm.getelementptr"(%11) <{elem_type = i32, rawConstantIndices = array<i32: 1024>}> : (!llvm.ptr) -> !llvm.ptr
    %104 = "llvm.ptrtoint"(%49) : (!llvm.ptr) -> i64
    %105 = "llvm.add"(%50, %2) : (i64, i64) -> i64
    %106 = "llvm.call"(%51) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %107 = "llvm.ptrtoint"(%52) : (!llvm.ptr) -> i64
    %108 = "llvm.add"(%53, %12) : (i64, i64) -> i64
    %109 = "llvm.urem"(%54, %2) : (i64, i64) -> i64
    %110 = "llvm.sub"(%54, %55) : (i64, i64) -> i64
    %111 = "llvm.inttoptr"(%56) : (i64) -> !llvm.ptr
    %112 = "llvm.getelementptr"(%11) <{elem_type = i32, rawConstantIndices = array<i32: 1024>}> : (!llvm.ptr) -> !llvm.ptr
    %113 = "llvm.ptrtoint"(%58) : (!llvm.ptr) -> i64
    %114 = "llvm.add"(%59, %2) : (i64, i64) -> i64
    %115 = "llvm.call"(%60) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %116 = "llvm.ptrtoint"(%61) : (!llvm.ptr) -> i64
    %117 = "llvm.add"(%62, %12) : (i64, i64) -> i64
    %118 = "llvm.urem"(%63, %2) : (i64, i64) -> i64
    %119 = "llvm.sub"(%63, %64) : (i64, i64) -> i64
    %120 = "llvm.inttoptr"(%65) : (i64) -> !llvm.ptr
    "cf.br"(%7)[^bb1] : (index) -> ()
  ^bb1(%121: index):  // 2 preds: ^bb0, ^bb2
    %122 = "arith.cmpi"(%121, %8) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%122)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %123 = "arith.addi"(%121, %9) : (index, index) -> index
    "cf.br"(%123)[^bb1] : (index) -> ()
  ^bb3:  // pred: ^bb1
    %124 = "llvm.alloca"(%6) <{elem_type = !llvm.array<2 x i64>}> : (i64) -> !llvm.ptr
    %125 = "llvm.getelementptr"(%124) <{elem_type = !llvm.array<2 x i64>, rawConstantIndices = array<i32: 0, 0>}> : (!llvm.ptr) -> !llvm.ptr
    %126 = "llvm.load"(%125) <{ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %127 = "builtin.unrealized_conversion_cast"(%126) : (i64) -> index
    "cf.br"(%7)[^bb4] : (index) -> ()
  ^bb4(%128: index):  // pred: ^bb3
    %129 = "arith.cmpi"(%128, %127) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%129)[^bb5, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb5:  // pred: ^bb4
    "cf.br"(%7)[^bb6] : (index) -> ()
  ^bb6(%130: index):  // 2 preds: ^bb5, ^bb6
    %131 = "arith.addi"(%130, %9) : (index, index) -> index
    "cf.br"(%131)[^bb6] : (index) -> ()
  ^bb7:  // pred: ^bb4
    "cf.br"(%7)[^bb8] : (index) -> ()
  ^bb8(%132: index):  // pred: ^bb7
    %133 = "arith.cmpi"(%132, %9) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%133)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "cf.br"(%7)[^bb10] : (index) -> ()
  ^bb10(%134: index):  // 2 preds: ^bb9, ^bb10
    %135 = "arith.addi"(%134, %9) : (index, index) -> index
    "cf.br"(%135)[^bb10] : (index) -> ()
  ^bb11:  // pred: ^bb8
    "cf.br"(%7)[^bb12] : (index) -> ()
  ^bb12(%136: index):  // 2 preds: ^bb11, ^bb13
    %137 = "arith.cmpi"(%136, %9) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%137)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %138 = "arith.addi"(%136, %9) : (index, index) -> index
    "cf.br"(%138)[^bb12] : (index) -> ()
  ^bb14:  // pred: ^bb12
    %139 = "builtin.unrealized_conversion_cast"(%6) : (i64) -> index
    "cf.br"(%7)[^bb15] : (index) -> ()
  ^bb15(%140: index):  // 2 preds: ^bb14, ^bb16
    %141 = "arith.cmpi"(%140, %139) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%141)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb16:  // pred: ^bb15
    %142 = "arith.addi"(%140, %9) : (index, index) -> index
    "cf.br"(%142)[^bb15] : (index) -> ()
  ^bb17:  // pred: ^bb15
    "cf.br"(%7)[^bb18] : (index) -> ()
  ^bb18(%143: index):  // pred: ^bb17
    %144 = "arith.cmpi"(%143, %9) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%144)[^bb19, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    "cf.br"(%1)[^bb20] : (index) -> ()
  ^bb20(%145: index):  // 2 preds: ^bb19, ^bb20
    %146 = "arith.addi"(%145, %9) : (index, index) -> index
    "cf.br"(%146)[^bb20] : (index) -> ()
  ^bb21:  // pred: ^bb18
    "cf.br"(%7)[^bb22] : (index) -> ()
  ^bb22(%147: index):  // pred: ^bb21
    %148 = "arith.cmpi"(%147, %10) <{predicate = 2 : i64}> : (index, index) -> i1
    "cf.cond_br"(%148)[^bb23, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    "cf.br"(%1)[^bb24] : (index) -> ()
  ^bb24(%149: index):  // 2 preds: ^bb23, ^bb24
    %150 = "arith.addi"(%149, %9) : (index, index) -> index
    "cf.br"(%150)[^bb24] : (index) -> ()
  ^bb25:  // pred: ^bb22
    "cf.br"(%7)[^bb26] : (index) -> ()
  ^bb26(%151: index):  // pred: ^bb25
    "cf.br"(%7)[^bb27] : (index) -> ()
  ^bb27(%152: index):  // pred: ^bb26
    "cf.br"(%1)[^bb28] : (index) -> ()
  ^bb28(%153: index):  // pred: ^bb27
    "cf.br"(%1)[^bb29] : (index) -> ()
  ^bb29(%154: index):  // 2 preds: ^bb28, ^bb29
    %155 = "builtin.unrealized_conversion_cast"(%153) : (index) -> i32
    %156 = "spirv.FunctionCall"(%155, %155) <{callee = @__mlir_math_ipowi_i32}> : (i32, i32) -> i32
    "cf.br"(%7)[^bb29] : (index) -> ()
  }) : () -> ()
  "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = (i32, i32) -> i32, sym_name = "__mlir_math_ipowi_i32"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "spirv.Constant"() <{value = 0 : i32}> : () -> i32
    %1 = "spirv.Constant"() <{value = 1 : i32}> : () -> i32
    %2 = "spirv.Constant"() <{value = -1 : i32}> : () -> i32
    %3 = "spirv.IEqual"(%arg1, %0) : (i32, i32) -> i1
    "cf.cond_br"(%3, %1)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb1(%4: i32):  // 3 preds: ^bb0, ^bb2, ^bb2
    "spirv.ReturnValue"(%4) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %5 = "spirv.BitwiseAnd"(%arg1, %1) : (i32, i32) -> i32
    %6 = "spirv.INotEqual"(%5, %0) : (i32, i32) -> i1
    "cf.cond_br"(%6, %2, %1)[^bb1, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  }) {llvm.linkage = #llvm.linkage<linkonce_odr>, sym_visibility = "private"} : () -> ()
}) : () -> ()

