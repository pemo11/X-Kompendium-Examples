// file: 06_Tuples.prg
// Using Tuples in X#
// Not possible with X# 2.15?
// Compiles but does not run

Using System.Collections.Generic

Function GetTuple() As Tuple<int,int>
  var z1 := Random{}:Next(1, 100)
  var z2 := Random{}:Next(1, 100)
  Local z := <Int>{z1, z2} As Int[]
  Return (Tuple<int,int>)z

Function Start() As Void
   var t := GetTuple()
   ? t:GetType():Name
