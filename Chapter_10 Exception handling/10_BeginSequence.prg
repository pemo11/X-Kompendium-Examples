// file: 10_BeginSequence.prg
// Example for Begin Sequence, Recover, End Sequence
// Compile with /dialect:VO /r:Assemblies/XSharp.Core.dll /r:Assemblies/XSharp.Rt.dll

using System.Collections.Generic

Class Person
   Internal Property Name As String Auto
End Class

Function Start() As Void
  Local personen As List<Person>
  Local ex As Usual
  Begin Sequence
   var p := personen[0]
  Recover Using ex
    ? i"Fehler... ({ex})"
  End Sequence    
