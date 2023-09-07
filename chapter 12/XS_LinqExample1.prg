// file: XS_LinqExample1.prg
// Using LINQ with query comprehensions

using System.Collections.Generic
using System.Linq

Function Start() As Void
   var cities := List<String>{}{"Esslingen", "Plochingen", "Stuttgart"}
   var smallCities := From City In Cities Where City.EndsWith("gen") Select City
   ForEach var city in smallCities
      ? city
   Next