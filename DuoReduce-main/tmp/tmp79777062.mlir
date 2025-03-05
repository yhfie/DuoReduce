llvm.func @malloc91( vector<27xi1> -> vector<27xi1>)-> vector<27xi1> -> vector<27xi1>
func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {
  %cst_6 = arith.constant dense<true> : vector<10xi1>
  %cst_8 = arith.constant dense<true> : vector<27xi1>