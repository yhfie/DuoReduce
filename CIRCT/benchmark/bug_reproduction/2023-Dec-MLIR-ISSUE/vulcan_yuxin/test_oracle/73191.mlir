"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, sym_name = "malloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "func.func"() <{function_type = (memref<15x32x15xi1>, i1, tensor<13x13xf16>) -> vector<13x13xi32>, sym_name = "func1"}> ({
  ^bb0(%arg0: memref<15x32x15xi1>, %arg1: i1, %arg2: tensor<13x13xf16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 7 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %10 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %11 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %12 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %14 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %15 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %16 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %18 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %19 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> i64
    %20 = "builtin.unrealized_conversion_cast"(%19) : (i64) -> index
    %21 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %22 = "builtin.unrealized_conversion_cast"(%21) : (i64) -> index
    %23 = "llvm.mlir.constant"() <{value = 5 : index}> : () -> i64
    %24 = "builtin.unrealized_conversion_cast"(%23) : (i64) -> index
    %25 = "llvm.mlir.constant"() <{value = 19 : index}> : () -> i64
    %26 = "builtin.unrealized_conversion_cast"(%25) : (i64) -> index
    %27 = "llvm.mlir.constant"() <{value = 31 : index}> : () -> i64
    %28 = "memref.alloc"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13x13xf16>
    %29 = "llvm.mlir.constant"() <{value = 15 : index}> : () -> i64
    %30 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %31 = "llvm.mul"(%29, %27) : (i64, i64) -> i64
    %32 = "llvm.mul"(%31, %27) : (i64, i64) -> i64
    %33 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %34 = "llvm.getelementptr"(%33, %32) <{elem_type = i1, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %35 = "llvm.ptrtoint"(%34) : (!llvm.ptr) -> i64
    %36 = "llvm.call"(%35) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %37 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %38 = "llvm.insertvalue"(%37, %36) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, !llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %39 = "llvm.insertvalue"(%38, %36) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, !llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %40 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> i64
    %41 = "llvm.insertvalue"(%39, %40) <{position = array<i64: 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %42 = "llvm.insertvalue"(%41, %27) <{position = array<i64: 3, 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %43 = "llvm.insertvalue"(%42, %27) <{position = array<i64: 3, 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %44 = "llvm.insertvalue"(%43, %29) <{position = array<i64: 3, 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %45 = "llvm.insertvalue"(%44, %31) <{position = array<i64: 4, 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %46 = "llvm.insertvalue"(%45, %29) <{position = array<i64: 4, 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %47 = "llvm.insertvalue"(%46, %30) <{position = array<i64: 4, 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %48 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %49 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %50 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %51 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %52 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %53 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %54 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %55 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %56 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %57 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %58 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %59 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %60 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %61 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %62 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %63 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %64 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %65 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %66 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %67 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %68 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %69 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %70 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %71 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %72 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %73 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %74 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %75 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %76 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %77 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %78 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %79 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %80 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %81 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %82 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %83 = "llvm.extractvalue"(%41) <{position = array<i64: 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>) -> i64
    %84 = "llvm.extractvalue"(%47) <{position = array<i64: 4, 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>) -> i64
    %85 = "llvm.icmp"(%83, %19) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%85)[^bb1, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %86 = "llvm.icmp"(%84, %21) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%86)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %87 = "memref.load"(%28, %24, %22) : (memref<13x13xf16>, index, index) -> f16
    %88 = "memref.alloc"(%26, %20) <{alignment = 64 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?x15xi16>
    "linalg.map"(%88) ({
      "linalg.yield"(%7) : (i16) -> ()
    }) : (memref<?x?x15xi16>) -> ()
    "llvm.unreachable"() : () -> ()
  ^bb3:  // pred: ^bb0
    "llvm.unreachable"() : () -> ()
  ^bb4:  // pred: ^bb1
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
}) : () -> ()

