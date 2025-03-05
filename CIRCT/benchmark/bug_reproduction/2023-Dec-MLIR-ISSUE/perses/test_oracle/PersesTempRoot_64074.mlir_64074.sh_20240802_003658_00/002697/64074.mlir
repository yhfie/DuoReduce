"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
  ^bb0(%arg0: tensor<23x12xf16>, %arg1: tensor<?x?x12xi16>, %arg2: vector<23x21x23xi1>):
    %0 = "arith.constant"() <{value = 2.05639219E+9 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = true}> :
    %17 = "vector.broadcast"(%0) : (f32) -> vector<21x12x12xf32>
    %25 = "vector.fma"(%17, %17, %17) : (vector<21x12x12xf32>, vector<21x12x12xf32>, vector<21x12x12xf32>) -> vector<21x12x12xf32>
    "vector.print"(%25)                                                : (vector<21x12x12xf32>) -> ()
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()
