// file: XS_DynamicArrayWithList.prg
// A small example for using a "dynamic Array" the .Net way - but I would consider "bad practice"

using System.Collections.Generic

Function Start() As Void
  var aItem := List<object>{}{List<Object>{}{1,"Spagetti",3},;
                              List<Object>{}{11,"Rigatoni",33};
                             }
  aItem:Add(List<Object>{}{111,"Pizza",333})

  // not possible because the list element type is object
  // error: Cannot apply indexing with [] to an expression of type `object'
  // ?aItem[0][1]
  // Works, but too complicated
  ?i"I really like {((List<Object>)aItem[2])[1]}"