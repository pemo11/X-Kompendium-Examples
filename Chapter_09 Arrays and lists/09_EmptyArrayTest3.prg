// file: 09_EmptyArrayTest3.prg
// Tests if a VO two dimensional array contains an array as second value with only 0 values with AScan
// compile with xsc .\09_EmptyArrayTest3.prg /dialect:VO /r:../Assemblies/XSharp.Rt.dll /r:../Assemblies/XSharp.Core.dll

Function Start() As Void
   Local a2D := {{"A", {0,0,0,0,0}}, {"B", {0,0,0,0,1}}, {"C", {0,0,1,0,1}}} As Array
   /// scans only the first array
   var pos := AScan(a2D[1,2], {|z|z > 0})
   ? pos
   // scans all arrays
   For Local i := 1 UpTo a2D:Length
       pos := AScan(a2D[i,2], {|z|z > 0})
       ? pos
   Next
   