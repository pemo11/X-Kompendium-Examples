// file: 10_MethodCallerName.prg
// Getting the name of the calling method

using System.Collections.Generic
using System.Runtime.CompilerServices

Class Person
    Internal Property Name As String Auto
End Class

Class Personen
    Private pListe As List<Person>

    Internal Method Delete([CallerMemberName]memberName := "" As String) As Void
        ? i"Calling from {memberName}"
        Self:pListe:RemoveAt(0)


End Class

Function Start() As Void
    Try
      var personen := Personen{}
      personen:Delete()
    Catch ex As SystemException
       ? ex
    End Try



