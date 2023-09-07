// file: XS_ArraySorting2.prg
// Sorting a .Net Array - Part 2
// Does not work, it raises a InvalidOperationException exception

Class Document
  Property Id As Int Auto
  Property Title As String Auto
End Class

function Start() as void
  Local values := Document[]{3} As Document[]

  values[1] := Document{}{Id := 1000, Title := "X# for ever"}
  values[2] := Document{}{Id := 1001, Title := "C# for ever"}
  values[3] := Document{}{Id := 1002, Title := "F# for ever"}

  Array.Sort(values)

  ForEach var v in values
   ? v:Title
  Next
