// file: 09_EmptyArrayTest2.prg
// Tests if a .Net array as only 0 values with AScan

using System.Linq

// Tests for a value not 0
Function IsEmpty(a As Int32[]) As Logic
     Return a:Where({z => z <> 0}):ToList():Count == 0

Function Start() As Void
   Local a1 := <Int32>{0,0,0,0,0} As Int32[]
   ? IsEmpty(a1)
   Local a2 := <Int32>	{0,0,0,1,0} As Int32[]
   ? IsEmpty(a2)