#map1 = affine_map<(d0, d1, d2, d3) -> (d0 - 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
  ^bb0(%arg0: tensor<23x12xf16>, %arg1: tensor<?x?x12xi16>, %arg2: vector<23x21x23xi1>):
    %0 = "arith.constant"() <{value = 2.05639219E+9 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 5 : index}> : () -> index
    %4 = "arith.constant"() <{value = 6 : index}> : () -> index
    %5 = "arith.constant"() <{value = 9777 : i16}> : () -> i16
    %6 = "arith.constant"() <{value = -3527 : i16}> : () -> i16
    %17 = "vector.broadcast"(%0) : (f32) -> vector<21x12x12xf32>
    %25 = "vector.fma"(%17, %17, %17) : (vector<21x12x12xf32>, vector<21x12x12xf32>, vector<21x12x12xf32>) -> vector<21x12x12xf32>
    "vector.print"(%25) <{punctuation = #vector.punctuation<newline>}> : (vector<21x12x12xf32>) -> ()
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()
