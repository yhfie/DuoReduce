"builtin.module"() ({
  "func.func"() <{function_type = (tensor<23x12xf16>, tensor<?x?x12xi16>, vector<23x21x23xi1>) -> i1, sym_name = "func1"}> ({
          "vector.fma"(%17, %17, %17) : (vector<21x12x12xf32>, vector<21x12x12xf32>, vector<21x12x12xf32>) -> vector<21x12x12xf32>
  }) : () -> ()
}) : () -> ()
