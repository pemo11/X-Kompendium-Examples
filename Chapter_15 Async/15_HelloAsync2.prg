// file: 15_HelloAsync2.prg
// A very simple kind of Hello, World for Async operations
// compile with xsc ./15_HelloAsync.prg /main:App

using System.Collections.Generic
using System.Threading.Tasks

Class App

  // Something that would take a little longer in a real application
  Static Async Method DoWorkAsync() As Task<Int>
     ? "Generating a random number..."
     var z := await Task.Run({ => Random{}:Next(1,100)})
     // more approprirate then a Thread.Sleep(200)
     await Task.Delay(2000)
     ? "Number generated..."
     Return z
 
  // Starting point of the Start() method
  Static Async Method Start() As Task
    ? "Calling a asynchronous method..."
    var z := await DoWorkAsync()
    ?z

End Class