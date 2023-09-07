// file: XS_DynamicArraysVO.prg
// A small example for creating a dynamic Array in the VO dialect
// compile with ./xsc 09_DynamicArraysVO.prg /dialect:VO /r:RuntimeLibs/XSharp.Rt.dll /r:RuntimeLibs/XSharp.Core.dll

Function Start() As Void
  var aItem := { { 1,"OOP", "Soup"},;
                 { 2, "AOT", "Cherrypie"};
               }

  AAdd(aItem, { 3, "SOLID", "Enchiladas"})

  ?i"I like {aItem[3][3]}"