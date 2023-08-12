// file: 09_ArrayLastElements1.prg
// Getting the last elements of an array

using System.Collections.Generic

Function GetLastNumbers(a as Int[], n As Int) As Int[]
    var tmpList := List<Int>{}
    For Local i:= n - 1 DownTo 0
       tmpList:Add(a[a:Length - i])
    Next
    Return tmpList:ToArray()

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
