// file: 12_IteratingListExeptLastElement.prg
// Iterating over a list except the last element

using System.Collections.Generic
using System.Linq

Class C
  Static Method GetNumbers() As List<Int>
    Return List<Int>{}{11,22,33,44,55,66}

End Class

Function Start() As Void
   ForEach var z in C:GetNumbers():ToArray():Reverse():Skip(1):Reverse():ToList()
       ? z
   Next