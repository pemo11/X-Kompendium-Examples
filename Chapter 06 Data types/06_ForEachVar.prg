// file: 06_ForEachVar.prg
// Example for a ForEach loop with a var variable

using System.Collections.Generic

Class City
  Property Name As String Auto
  Property Country As String Auto

  Override Method ToString() As String
   Return i"Name={Self:Name} Country={Self:Country}"

End Class

Function Start() As Void
   var bigCities := List<City>{}{City{}{Name:="New York", Country:="USA"},;
                               City{}{Name:="Vancouver", Country:="USA"},;
			       City{}{Name:="Cairo", Country:="Egypt"}}
    ForEach var City in bigCities
     ? City
    Next