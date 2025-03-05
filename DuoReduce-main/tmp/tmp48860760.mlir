func.func private @func2(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>)  {
%7= arith.constant dense<42>: vector<27xi1> -> vector<27xi1>
  return
}