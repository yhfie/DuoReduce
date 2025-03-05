"builtin.module"() ({
  "func.func"() <{function_type = (tensor<27x16xi64>, f16, memref<?x16xi16>) -> (), sym_name = "func2"                            }> ({
  ^bb0(%bb0           :tensor<27x16xi64>,%function_type :f16,%sym_name :memref<?x16xi16>):
    %0 = "arith.constant"()  {value = dense<true> : vector<10xi1>}  : () -> vector<10xi1>
    %1 = "arith.constant"()  {value = dense<true> : vector<27xi1>}  : () -> vector<27xi1>
          "vector.mask"(%1) ({
      %21 = "vector.mask"(%0) ({
        "vector.yield"(%0 ) : (vector<10xi1>) -> ()
      }) : (vector<10xi1>) -> vector<10xi1>
      "vector.yield"(%21) : (vector<10xi1>) -> ()
    }) : (vector<27xi1>) ->           i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()
