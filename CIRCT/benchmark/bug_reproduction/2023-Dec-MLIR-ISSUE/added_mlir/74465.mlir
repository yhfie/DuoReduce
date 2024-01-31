// mlir-opt test.mlir -test-diagnostic-filter=filters=mysource1
module {
  func.func @main(%arg2: tensor<34x1x55x47xi32>){
  %cst_1 = arith.constant dense<23> : vector<15xindex>
  %cst_2 = arith.constant dense<false> : vector<15xi1>
  %cst_3 = arith.constant 1.000000e+00 : f16
  %cst_12 = arith.constant dense<23> : vector<15xindex>
  %cst_13 = arith.constant dense<false> : vector<15xi1>
  %cst_18 = arith.constant 1.000000e+00 : f16
    %collapsed = tensor.collapse_shape %arg2 [[0, 1], [2], [3]] : tensor<34x1x55x47xi32> into tensor<34x55x47xi32>
    return
  }
}
