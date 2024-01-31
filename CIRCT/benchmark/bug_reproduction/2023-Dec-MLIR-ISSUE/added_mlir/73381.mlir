//mlir-opt --arith-emulate-wide-int a.mlir
func.func @func2() {
  %cst_0 = arith.constant dense<0> : vector<2xi64>
  %cst_4 = arith.constant dense<true> : vector<2xi1>
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
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
  %2 = vector.mask %cst_4 { vector.multi_reduction <xor>, %cst_0, %cst_0 [] : vector<2xi64> to vector<2xi64> } : vector<2xi1> -> vector<2xi64>
  return
}
