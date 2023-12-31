// file: XS_AScanExample3.prg
// Scanning a 2d array with AScan until all values found
// compile with /dialect:VO /r:RuntimeLibs/XSharp.Core.dll /r:RuntimeLibs/XSharp.RT.dll                               

Function Start() as Void
  Local AValues := {} As Array
  AAdd(AValues, {"A", 1000})
  AAdd(AValues, {"A", 2000})
  AAdd(AValues, {"B", 100})
  AAdd(AValues, {"B", 200})
  AAdd(AValues, {"A", 3000})
  Local pos := 0 As DWord
  While (pos := AScan(AValues, {|f|f[1]=="A"}, pos+1)) > 0
    ? AValues[pos][2]
  End While
