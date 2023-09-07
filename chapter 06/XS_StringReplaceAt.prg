// file: XS_StringReplaceAt.prg
// replacing a char in a string - always good as an extension method

using System

Class StringEx

    Static Method ReplaceAt(Self str As String, pos As Int, newChar As Char) As String
        If String.IsNullOrEmpty(str)
           throw ArgumentNullException{"str"}
        EndIf
        var chars := str:ToCharArray()
        chars[pos] := newChar
        Return String{chars}

End Class

Function Start() As Void
   var s1 := "Tomorow never dyes"
   ? s1
   s1 := s1:ReplaceAt(16, c"i")
   ? s1