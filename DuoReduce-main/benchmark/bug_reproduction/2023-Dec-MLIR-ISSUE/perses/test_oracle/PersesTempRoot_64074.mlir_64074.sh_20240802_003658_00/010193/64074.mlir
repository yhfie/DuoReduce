"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
  ^bb0(%sym_name :tensor<23x12x f16>,%arg1 :tensor<?x?x12xi16>,%arg2 :vector<23x21x23xi1>):
    %0 = "arith.constant"()  {value = 2.05639219E+9 : f32}  : () -> f32
  }) : () -> ()
}) : () -> ()
