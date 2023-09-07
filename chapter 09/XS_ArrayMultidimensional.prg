// file: XS_ArrayMultidimensional.prg
// Creating a two dimensional .Net array

Function Start() as void
  Local Numbers := Int[,]{2,2} As Int[,]
  Numbers [1,1] := 100
  Numbers [1,2] := 111
  Numbers [2,1] := 200
  Numbers [2,2] := 222
  For Local i := 1 UpTo Numbers:GetUpperBound(0) + 1
    For Local j := 1 UpTo Numbers:GetUpperBound(1) + 1
      ? Numbers[i,j]
    Next
  Next
