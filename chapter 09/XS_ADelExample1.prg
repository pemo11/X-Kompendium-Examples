// file: XS_ADelExample1.prg
// Deleting an array element with ADel
// compile with /dialect:VO /r:RuntimeLibs/XSharp.Core.dll /r:RuntimeLibs/XSharp.RT.dll    

Function Start() As Void
    Local aValues := {} As Array
    AAdd(aValues, {"A", 1000})
    AAdd(aValues, {"B", 2000})
    AAdd(aValues, {"C", 3000})
    AAdd(aValues, {"D", 4000})
    Local wPos := AScan(aValues, {|a|a[1] = "C"}) As Dword
    // found value will be removed
    If wPos > 0
      ADel(aValues, wPos)
      // Resize the array to avoid a bound error
      ASize(aValues, len(aValues) - 1)
    EndIf
    For Var i := 1 Upto ALen(aValues)
        ? aValues[i,1]
    Next
