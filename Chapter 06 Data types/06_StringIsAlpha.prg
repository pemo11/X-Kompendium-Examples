// file: 06_StringIsAlpha.prg
// Example for an IsAlpha extension method

using System.LINQ

Class StringEx

   Static Method IsAlpha(Self str As String) As Boolean
      Return str:ToCharArray():Where({ c => Char.IsLetterOrDigit(c)}):ToList():Count == str:Length

End Class

Function Start() As Void
   var s1 := "Andromeda"
   ? s1:IsAlpha()
   var s2 := "Fahrenheit 452"
   ? s2:IsAlpha()
