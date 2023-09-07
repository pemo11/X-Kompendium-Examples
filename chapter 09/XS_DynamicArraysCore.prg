// file: XS_DynamicArraysCore.prg
// A small example for creating a dynamic Array in the Core dialect

Function Start() As Void
  var aItem := <Int32[]>{ {1,2,3},;
                        { 11,22,33};
                      }

  ?aItem[2][2]