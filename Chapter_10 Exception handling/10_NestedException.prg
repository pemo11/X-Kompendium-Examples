// file: 10_NestedException.prg
// An example for a nested exception

using System.Collections.Generic

Class Person
   Private Personen As List<Person>

   Internal Method Delete() As Void
      Try
        Personen:RemoveAt(0)
      Catch ex As SystemException
        Throw ApplicationException{"Person delete not possible now, try again later", ex}
      End Try
End Class

Function Start() As Void
    var p := Person{}
    Try
       p:Delete()
    Catch ex As Exception
       ? i"Error: {ex:Message} InnerException: {ex:InnerException:Message}"
    End Try
