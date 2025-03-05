//mlir-opt --canonicalize a.mlir
llvm.func @malloc(i64) -> !llvm.ptr
func.func @func2(%arg0: index, %arg1: memref<13x13xi64>, %arg2: index) {
  %cst_7 = arith.constant dense<1526248407> : vector<1xi64>
  %1 = llvm.mlir.constant(1 : index) : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %9 = tensor.empty(%c1, %c6) : tensor<?x?xi64>
    %alloc = memref.alloc() : memref<8x32xi64>
    %alloc_6 = memref.alloc(%c6) : memref<?x16xi1>
    %alloc_16 = memref.alloc(%c6) : memref<?xi1>
    %true_1 = index.bool.constant true
    %true_2 = index.bool.constant true
    %true_3 = index.bool.constant true
    %true_4 = index.bool.constant true
    %true_5 = index.bool.constant true
    %true_6 = index.bool.constant true
    %true_7 = index.bool.constant true
    %true_8 = index.bool.constant true
    %true_9 = index.bool.constant true
    %true_10 = index.bool.constant true
    %true_11 = index.bool.constant true
    %true_12 = index.bool.constant true
    %true_13 = index.bool.constant true
    %true_14 = index.bool.constant true
    %true_22 = index.bool.constant true
  %101 = vector.insert %1, %cst_7 [0] : i64 into vector<1xi64>
  vector.print %101 : vector<1xi64>
  return
}
