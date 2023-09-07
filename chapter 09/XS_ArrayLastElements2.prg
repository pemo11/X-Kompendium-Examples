// file: XS_ArrayLastElements2.prg
// Getting the last elements of an array with LINQ

using System.Collections.Generic
using System.Linq

Function GetLastNumbers(a As Int[], n As Int) As Int[]
   Return Enumerable.Reverse(a):Take(n):Reverse():ToArray()

Function PrintNumbers(a As Int[]) As Void
    ForEach var z in a
     ? z
    Next

Function Start() As Void
   var numbers := <Int>{11,22,33,44,55,66}
   var lastNumbers := GetLastNumbers(numbers, 3)
   ? "The last 3 numbers"
   PrintNumbers(lastNumbers)
   lastNumbers := GetLastNumbers(numbers, 2)
   ? "The last 2 numbers"
   PrintNumbers(lastNumbers)
   lastNumbers := GetLastNumbers(numbers, 1)
   ? "The last number"
   PrintNumbers(lastNumbers)
