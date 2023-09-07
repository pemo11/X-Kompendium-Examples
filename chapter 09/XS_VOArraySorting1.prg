// file: XS_VOArraySorting1.prg
// Simple sorting of a VO array with ASort()
// compile with /dialect:VO /r:runtimeLibs/XSharp.Core.dll /r:runtimeLibs/XSharp.Rt.dll

Function Start() As Void
   var cities := {"Plochingen", "Göppingen", "Esslingen", "Reutlingen", "Eislingen"}
   var sortedCities := ASort(cities)
   ForEach var city in sortedCities
     ?city
   Next
