// file: XS_LinqExample2.prg
// Using LINQ with extension methods

using System.Collections.Generic
using System.Linq

Function Start() As Void
   var cities := List<String>{}{"Esslingen", "Plochingen", "Stuttgart"}
   var smallCities := cities:Where({city => city.EndsWith("gen")}):Select({city => city})
   ForEach var city in smallCities
      ? city
   Next