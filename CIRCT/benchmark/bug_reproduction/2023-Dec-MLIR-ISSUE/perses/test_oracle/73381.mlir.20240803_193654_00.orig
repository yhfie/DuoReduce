"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "func2"}> ({
    %0 = "arith.constant"() <{value = dense<0> : vector<2xi64>}> : () -> vector<2xi64>
    %1 = "arith.constant"() <{value = dense<true> : vector<2xi1>}> : () -> vector<2xi1>
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "arith.constant"() <{value = 4 : index}> : () -> index
    %6 = "arith.constant"() <{value = 5 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 6 : index}> : () -> index
    %9 = "index.bool.constant"() <{value = true}> : () -> i1
    %10 = "index.bool.constant"() <{value = true}> : () -> i1
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
    %24 = "vector.mask"(%1) ({
      %25 = "vector.multi_reduction"(%0, %0) <{kind = #vector.kind<xor>, reduction_dims = []}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
      "vector.yield"(%25) : (vector<2xi64>) -> ()
    }) : (vector<2xi1>) -> vector<2xi64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

