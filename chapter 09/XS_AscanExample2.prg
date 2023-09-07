// file: XS_AScanExample2.prg
// Searching a int array with AScan
// compile with /dialect:VO /r:RuntimeLibs/XSharp.Core.dll /r:RuntimeLibs/XSharp.RT.dll                               

Function Start() As Void
    Local a1 := {} As Array
    AAdd(a1, 11)
    AAdd(a1, 22)
    AAdd(a1, 33)
    AAdd(a1, 44)
    // Does the value 33 exists in the Array?
    ?AScan(a1, {|x|x = 33})
    // Does the value 55 exists in the Array?
    ?AScan(a1, {|x|x = 55})
