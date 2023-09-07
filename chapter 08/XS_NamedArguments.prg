// file: XS_NamedArguments.prg
// An example for named arguments

Class C

  Static Method Logit(Msg := "Default" 

As String) As Void
    ?Msg
    Return

End Class

Function Start() As Void
  C.Logit("Don't worry, be happy")
  C.Logit(Msg := "Not reason to be concerned")