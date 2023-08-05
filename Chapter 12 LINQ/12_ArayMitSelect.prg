// file: 12_ArrayMitSelect.prg
// An example of using Select() with an array
using System.Linq

Function Start() As Void
   var numbers := <Int>{11,22,33,44,55,66}
   
   // the return statement is important, otherwise 
   // error XS0201: Only assignment, call, increment, decrement, await,
   //  and new object expressions can be used as a statement
   var results := numbers:Select({ z => 
    return Class { number := z }
   })
   
   ForEach var result in results
      ? result
   Next
   