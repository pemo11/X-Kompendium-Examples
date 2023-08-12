// file: 09_ArraySorting3.prg
// Sorting a .Net Array - Part 3
using System

Class Document Implements IComparable
  Property Id As Int Auto
  Property Title As String Auto

  Method CompareTo(o As Object) As Int
    Return String.Compare(Self:Title, ((Document)o).Title)

End Class

Function Start() as void
  Local values := Document[]{3} As Document[]

  values[1] := Document{}{Id := 1000, Title := "X# for ever"}
  values[2] := Document{}{Id := 1001, Title := "C# for ever"}
  values[3] := Document{}{Id := 1002, Title := "F# for ever"}
  
  Array.Sort(values)

  ForEach var v in values
   ? v:Title
  Next
