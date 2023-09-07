// file: XS_UseClassLib.prg
// Uses the XLib library

using XLib

Function Start() As Void
   var z := Misc.GetNumber()
   ?i"The magic number is {z}"
