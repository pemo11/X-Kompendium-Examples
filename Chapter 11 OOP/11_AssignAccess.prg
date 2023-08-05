// file: 11_AssignAccess.prg
// Example for the classic VO property syntax

Class Test
  Private _P1 As Int

  Access P1 As Int
    Return _P1

  Assign P1(value As Int)
   _P1 := value

End Class

Function Start() As Void
  var t := Test{}
  t:P1 := 1234
  ? t:P1
