//mlir-opt --inline repro.mlir stuck forever
module {
  func.func @_QPs3() {
    func.call @_QPs1() : () -> ()
    func.call @_QPs2() : () -> ()
    return
  }
  func.func @_QPs2() {
    func.call @_QPs1() : () -> ()
    func.call @_QPs3() : () -> ()
    return
  }
  func.func @_QPs1() {
    func.call @_QPs2() : () -> ()
    func.call @_QPs3() : () -> ()
    return
  }
}