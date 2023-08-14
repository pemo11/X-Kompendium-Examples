// file: 13_ThreadLock1.prg
// A simple thread Lock example
using System.Threading

// Create a ref object - type and name doesn't matter
Static objLock := Object{} As Object

Function ShowMessage() As Void
    Begin Lock objLock
      Console.Write("VO and .Net finally together ")
      Console.WriteLine("thanks to X#")
    End Lock
    
Function Start() As Void
  var t1 := Thread{ShowMessage}
  var t2 := Thread{ShowMessage}
  var t3 := Thread{ShowMessage}
  t1:Start()
  t2:Start()
  t3:Start()
