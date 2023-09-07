// file: XS_VOArraySorting2.prg
// Using a lambda expression for sorting a VO array with ASort()
// compile with /dialect:VO /r:runtimeLibs/XSharp.Core.dll /r:runtimeLibs/XSharp.Rt.dll

Function Start() As Void
   var cities := {{14611,"Plochingen"},{59053,"Göppingen"},{94941,"Esslingen"},{117547,"Reutlingen"},{21745,"Eislingen"}}
   var sortedCities := ASort(cities,,, {|c1,c2| c1[1] > c2[1]})
   ForEach var city in sortedCities
     ?i"{city[2]} has a population of {((Int)city[1]).ToString(""n0"")}"
   Next
