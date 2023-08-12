// file: 09_ArraySortingLINQ.prg
// Sorting a .Net Array with LINQ
using System
using System.Linq

Class Document
  Property Id As Int Auto
  Property Title As String Auto
End Class

function Start() as void
  Local Documents := Document[]{3} As Document[]

  Documents[1] := Document{}{Id := 1001, Title := "C# for ever"}
  Documents[2] := Document{}{Id := 1002, Title := "F# for ever"}
  Documents[3] := Document{}{Id := 1000, Title := "X# for ever"}
  
  var sortedDocuments := From d in Documents OrderBy d.Id Select d

  ForEach var d in sortedDocuments 
   ? i"{d.Title} (Id={d.Id})"
  Next
