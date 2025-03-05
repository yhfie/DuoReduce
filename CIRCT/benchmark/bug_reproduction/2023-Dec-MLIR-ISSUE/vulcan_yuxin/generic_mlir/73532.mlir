"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, sym_name = "malloc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "func1", sym_visibility = "nested", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 64 : index}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %3 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %4 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %5 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %6 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %7 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %10 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %11 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 0x4E4156AC : f32}> : () -> f32
    %13 = "llvm.mlir.constant"() <{value = -1 : index}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 31 : index}> : () -> i64
    %15 = "memref.alloc"() <{alignment = 64 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<13x13xf16>
    %16 = "llvm.mlir.constant"() <{value = 15 : index}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 1 : index}> : () -> i64
    %18 = "llvm.mul"(%16, %14) : (i64, i64) -> i64
    %19 = "llvm.mul"(%18, %14) : (i64, i64) -> i64
    %20 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %21 = "llvm.getelementptr"(%20, %19) <{elem_type = i1, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %22 = "llvm.ptrtoint"(%21) : (!llvm.ptr) -> i64
    %23 = "llvm.call"(%22) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
    %24 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %25 = "llvm.insertvalue"(%24, %23) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, !llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %26 = "llvm.insertvalue"(%25, %23) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, !llvm.ptr) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %27 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> i64
    %28 = "llvm.insertvalue"(%26, %27) <{position = array<i64: 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %29 = "llvm.insertvalue"(%28, %14) <{position = array<i64: 3, 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %30 = "llvm.insertvalue"(%29, %14) <{position = array<i64: 3, 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %31 = "llvm.insertvalue"(%30, %16) <{position = array<i64: 3, 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %32 = "llvm.insertvalue"(%31, %18) <{position = array<i64: 4, 0>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %33 = "llvm.insertvalue"(%32, %16) <{position = array<i64: 4, 1>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %34 = "llvm.insertvalue"(%33, %17) <{position = array<i64: 4, 2>}> : (!llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>, i64) -> !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %35 = "tensor.generate"() ({
    ^bb0(%arg0: index, %arg1: index):
      %36 = "llvm.alloca"(%11) <{elem_type = !llvm.array<2 x i64>}> : (i64) -> !llvm.ptr
      %37 = "llvm.getelementptr"(%36) <{elem_type = !llvm.array<2 x i64>, rawConstantIndices = array<i32: 0, 19>}> : (!llvm.ptr) -> !llvm.ptr
      %38 = "llvm.load"(%37) <{ordering = 0 : i64}> : (!llvm.ptr) -> i64
      %39 = "llvm.mul"(%38, %13) : (i64, i64) -> i64
      %40 = "llvm.mlir.zero"() : () -> !llvm.ptr
      %41 = "llvm.getelementptr"(%40, %39) <{elem_type = f32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
      %42 = "llvm.ptrtoint"(%41) : (!llvm.ptr) -> i64
      %43 = "llvm.add"(%42, %0) : (i64, i64) -> i64
      %44 = "llvm.call"(%43) <{CConv = #llvm.cconv<ccc>, callee = @malloc, fastmathFlags = #llvm.fastmath<none>}> : (i64) -> !llvm.ptr
      "tensor.yield"(%12) : (f32) -> ()
    }) : () -> tensor<4x30xf32>
    "llvm.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

