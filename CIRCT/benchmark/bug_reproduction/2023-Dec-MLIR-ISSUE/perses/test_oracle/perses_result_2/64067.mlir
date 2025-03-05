"builtin.module"() ({
  "func.func"()                                                                                           ({
          "linalg.broadcast"(%15, %15)
       : (             i16 ,                 i16 ) ->none
          "scf.index_switch"(  )                        ({
            "memref.alloca_scope"() ({
        "linalg.transpose"(        )                                          ({
        ^15 (%15    :i16            ):
          "linalg.yield"(      ):  i16
        }) :                  i16
      }) :       index
    }) :index
  }) : ()
}) : ()
