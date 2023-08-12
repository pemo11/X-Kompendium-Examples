// file: 06_StringJoinInterpol.prg
// Example for a string interpolation with a join

using System.Collections.Generic
using System.Linq

Function Start() As Void
  var cities := List<String>{}{"New York", "Rio", "Tokyo"}
  ? i"I've been in {String.Join("","", cities)} but not in Bielefeld"
  // Now at little bit nicer
  ? i"I've been in {String.Join("","", cities.take(cities.Count-1).ToList())} and {cities.last()} but not in Bielefeld"