//mlir-opt -test-vector-unrolling-patterns=unroll-based-on-type temp.mlir
module {
  func.func @func1(%arg0: tensor<23x12xf16>, %arg1: tensor<?x?x12xi16>, %arg2: vector<23x21x23xi1>) -> i1 {
    %cst = arith.constant 2.05639219E+9 : f32
    %true1 = arith.constant true
    %c0 = arith.constant 0 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c9777_i16 = arith.constant 9777 : i16
    %c-3527_i16 = arith.constant -3527 : i16
    %c2 = arith.constant 2 : index
    %18 = index.ceildivu %c2, %c2
    %28 = index.ceildivu %c2, %c2
    %43 = index.sizeof
    %46 = index.divs %c2, %c2
    %92 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 16)>(%46, %28, %c2, %43)
    %true2 = arith.constant true
    %c1 = arith.constant 1 : index
    %alloc_9 = memref.alloc(%c0, %c2, %c2) : memref<?x?x?xi16>
    %53 = tensor.empty(%c2, %c2, %c2) : tensor<?x?x?x24xi16>
    %111 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %110 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %109 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %107 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %211 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %210 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %209 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %207 = vector.broadcast %cst : f32 to vector<21x12x12xf32>
    %112 = vector.fma %111, %111, %111 : vector<21x12x12xf32>
    vector.print %112 : vector<21x12x12xf32>
    return %true1 : i1
  }
}
