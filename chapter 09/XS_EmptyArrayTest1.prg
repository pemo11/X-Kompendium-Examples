// file: XS_EmptyArrayTest1.prg
// Tests if a VO array as only 0 values with AScan
// compile with /dialect:VO /r:runtimeLibs/XSharp.Rt.dll /r:runtimeLibs/XSharp.Core.dll

// Tests for a value not 0
Function IsEmpty(a As Array) As Logic
     Return AScan(a, {|z| z > 0}) > 0

Function Start() As Void
   Local a1 := {0,0,0,0,0} As Array
   ? IsEmpty(a1)
   Local a2 := {0,0,0,1,0}
   ? IsEmpty(a2)