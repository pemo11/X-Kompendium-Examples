// File: 07_ForEachVarWarning.prg
// Example for assigning a new value to the ForEach iterator variable which results to a compiler warning

using System.Collections.Generic

Function Start() As Void 
   var cities := List<String>{}{"Frankfurt","Munich","Berlin","Hamburg"}
   ForEach var city in cities
      city := city:ToUpper()
      ? city
   Next