// file: 09_ArrayLength.prg
// Getting the length of an array
// compile with xsc .\ArrayLength.prg /dialect:vo /r:XSharp.rt.dll /r:XSharp.Core.dll                                             

Function Start() as void
   Local Numbers1 := {1,3,5,7,11} As Array
   For Local i := 1 UpTo ALen(Numbers1)
     ? i"Index {i} => {Numbers1[i]}"
   Next
   Local Numbers2 := <Int>{1,3,5,7,11} As Int32[]
   For Local i := 1 UpTo Numbers2:Length
     ? i"Index {i} => {Numbers2[i]}"
   Next
