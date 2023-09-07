// file: XS_ClassDefinition.prg
// A simple class definition with an overloaded constructor and method
Begin Namespace NS1
  Class C1

    Constructor()

    Constructor(Count As Int)

  End Class

End Namespace

Function Start() As void
  var oC1 := C1{}
  ? oC1
  var oC2 := C1{100}
  ? oC2
