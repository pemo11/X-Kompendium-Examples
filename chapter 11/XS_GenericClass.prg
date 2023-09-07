// file: XS_GenericClass.prg
// A simple generic class example

Class Swap<T>

   Method Swapit(op1 Ref T, op2 Ref T) As Void
     Local h := op1 As T
     op1 := op2
     op2 := h

End Class

Function Start() As Void
  var swap1 := Swap<Int>{}
  var v1 := 100
  var v2 := 200
  swap1:Swapit(v1, v2)
  ? i"v1={v1} v2={v2}"
  var swap2 := Swap<Double>{}
  var v3 := 12.345
  var v4 := 59.566
  swap2:Swapit(v3, v4)
  ? i"v3={v3} v4={v4}"
  // this won't work
  // swap1:Swapit(v3, v4)
