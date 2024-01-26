#loc2 = loc("../jiyuan_try_out/a.generric.mlir":5:8)
#loc1 = loc("../jiyuan_try_out/a.generic.mlir":5:19)
"builtin.module"() ({
  "hw.module"() ({
  ^bb0(%arg0: i8, %arg1: i1):
    %0 = "sv.logic"() {name = "logicvar"} : () -> !hw.inout<i8>
    "sv.assign"(%0, %arg0) : (!hw.inout<i8>, i8) -> ()
    %1 = "sv.reg"() {name = "regvar"} : () -> !hw.inout<i8>
    "sv.assign"(%1, %arg0) : (!hw.inout<i8>, i8) -> ()
    %2 = "sv.reg"(%arg0) {name = "regwithinit"} : (i8) -> !hw.inout<i8>
    "hw.output"() : () -> ()
  }) {module_type = !hw.modty<input x : i8, input clock : i1>, parameters = [], port_locs =  [], sym_name = "Test"} : () -> ()
}) : () -> ()

