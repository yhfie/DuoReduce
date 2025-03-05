"builtin.module"() ({
  "func.func"() <{function_type = (tensor<27x16xi64>, f16, memref<?x16xi16>) -> (), sym_name = "func2", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<27x16xi64>, %arg1: f16, %arg2: memref<?x16xi16>):
    %0 = "arith.constant"() <{value = dense<true> : vector<10xi1>}> : () -> vector<10xi1>
    %1 = "arith.constant"() <{value = dense<true> : vector<27xi1>}> : () -> vector<27xi1>
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "arith.constant"() <{value = 4 : index}> : () -> index
    %6 = "arith.constant"() <{value = 5 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 6 : index}> : () -> index
    %9 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %10 = "vector.mask"(%1) ({
      %21 = "vector.mask"(%0) ({
        %22 = "vector.multi_reduction"(%0, %0) <{kind = #vector.kind<and>, reduction_dims = []}> : (vector<10xi1>, vector<10xi1>) -> vector<10xi1>
        "vector.yield"(%22) : (vector<10xi1>) -> ()
      }) : (vector<10xi1>) -> vector<10xi1>
      "vector.yield"(%21) : (vector<10xi1>) -> ()
    }) : (vector<27xi1>) -> vector<27xi1>
    %11 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %12 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %14 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %15 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %16 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %18 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %19 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    %20 = "llvm.mlir.constant"() <{value = 24583 : i16}> : () -> i16
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

