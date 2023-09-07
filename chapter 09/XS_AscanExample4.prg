// file: XS_AScanExample4.prg
// Seaching a two dimensional array with AScan
// compile with /dialect:VO /r:runtimeLibs/XSharp.Rt.dll /r:runtimeLibs/XSharp.Core.dll

Function Start() As Void
   Local a1 := Array{} As Array
   AAdd(a1, {0,0,0,0})
   AAdd(a1, {0,11,22,33,44})
   AAdd(a1, {0,111,222,333,444})
   AAdd(a1, {0,0,0,0})
   // Scan each array in a1 for containing non 0 values
   // ax is Usual, a cast would look like (Array)ax
   ForEach var ax in a1
      ?AScan(ax, {|z|z > 0})
   Next

   // prints 2 because this index in the second array is not 0
   ? AScan(a1[2], {|z|z > 0})
