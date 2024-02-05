"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x32xi32>, vector<8x32xi1>, vector<32x16xf16>) -> memref<32x16xf32>, sym_name = "func2", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<8x32xi32>, %arg1: vector<8x32xi1>, %arg2: vector<32x16xf16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 7 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "tensor.empty"(%0, %6) : (index, index) -> tensor<?x?xi64>
    %8 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x32xi64>
    %9 = "memref.alloc"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x16xi1>
    %10 = "memref.alloc"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi1>
    %11 = "index.bool.constant"() <{value = true}> : () -> i1
    %12 = "index.bool.constant"() <{value = true}> : () -> i1
    %13 = "index.bool.constant"() <{value = true}> : () -> i1
    %14 = "index.bool.constant"() <{value = true}> : () -> i1
    %15 = "index.bool.constant"() <{value = true}> : () -> i1
    %16 = "index.bool.constant"() <{value = true}> : () -> i1
    %17 = "index.bool.constant"() <{value = true}> : () -> i1
    %18 = "index.bool.constant"() <{value = true}> : () -> i1
    %19 = "index.bool.constant"() <{value = true}> : () -> i1
    %20 = "index.bool.constant"() <{value = true}> : () -> i1
    %21 = "index.bool.constant"() <{value = true}> : () -> i1
    %22 = "index.bool.constant"() <{value = true}> : () -> i1
    %23 = "index.bool.constant"() <{value = true}> : () -> i1
    %24 = "index.bool.constant"() <{value = true}> : () -> i1
    %25 = "index.bool.constant"() <{value = true}> : () -> i1
    %26 = "scf.while"(%7) ({
    ^bb0(%arg3: tensor<?x?xi64>):
      %42 = "tensor.empty"(%0, %6) : (index, index) -> tensor<?x?xi64>
      %43 = "tensor.empty"(%1, %4) : (index, index) -> tensor<?x?xi64>
      %44 = "tensor.empty"(%1, %4) : (index, index) -> tensor<?x?xi64>
      %45 = "tensor.empty"(%1, %4) : (index, index) -> tensor<?x?xi64>
      %46 = "tensor.empty"(%1, %4) : (index, index) -> tensor<?x?xi64>
      "scf.condition"(%25, %42) : (i1, tensor<?x?xi64>) -> ()
    }, {
    ^bb0(%arg3: tensor<?x?xi64>):
      %42 = "memref.alloca_scope"() ({
        %44 = "memref.cast"(%8) : (memref<8x32xi64>) -> memref<?x?xi64>
        %45 = "memref.realloc"(%10) : (memref<?xi1>) -> memref<19xi1>
        %46 = "arith.constant"() <{value = 0 : index}> : () -> index
        "memref.alloca_scope.return"(%46) : (index) -> ()
      }) : () -> index
      %43 = "tensor.empty"(%0, %6) : (index, index) -> tensor<?x?xi64>
      "scf.yield"(%43) : (tensor<?x?xi64>) -> ()
    }) : (tensor<?x?xi64>) -> tensor<?x?xi64>
    %27 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %28 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %29 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %30 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %31 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %32 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %33 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %34 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %35 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %36 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %37 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %38 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %39 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %40 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    %41 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<32x16xf32>
    "func.return"(%27) : (memref<32x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

