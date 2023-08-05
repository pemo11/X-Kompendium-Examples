// file: 11_PartialClass.prg
// A partial class definition

Partial Class App

  Static Method M1() As String
    Return "This is M1"

End Class

Partial Class App

  Static Method M2() As String
    Return "This is M2"

End Class

Function Start() As Void
 ? App.M1()
 ? App.M2()
