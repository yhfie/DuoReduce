"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<13x13xi64>, index) -> (), sym_name = "func2"}> ({
  ^bb0(%static_position :index,%array         :memref<13x13xi64>,%bb0           :index):
    %0 = "arith.constant"()  {value = dense<1         > : vector<1xi64>}  : () -> vector<1xi64>
    %1 = "llvm.mlir.constant"()  {value = 1 : index}  : () -> i64
    %28 = "vector.insert"(%1, %0)  {static_position = array<i64: 0>}  : (i64, vector<1xi64>) -> vector<1xi64>
    "vector.print"(%28)                                                : (vector<1xi64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
