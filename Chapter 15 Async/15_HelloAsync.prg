// file: 15_HelloAsync.prg
// A very simple kind of Hello, World for Async operations
// compile with xsc ./15_HelloAsync.prg /main:App

using System.Collections.Generic
using System.Threading.Tasks

Class App

  // Something that would take a little longer in a real application
  Static Async Method DoWorkAsync(Count As Int) As Task<List<Int>>
    var numbers := List<Int>{}
    For Local i := 1 UpTo Count
       ? "Generating a random number..."
       var z := await Task.Run({ => Random{}:Next(1,100)})
       // more approprirate then a Thread.Sleep(200)
       await Task.Delay(200)
       numbers:Add(z)
    Next
    Return Numbers
 
  // Starting point of the Start() method
  Static Async Method Start() As Task
    await Task.Run(Async Delegate { 
      For Local i := 3 UpTo 12 Step 4
        ? i"*** Getting a series of {i} numbers..."
        var numbers := await DoWorkAsync(i)
        ForEach var z in numbers
          ? z
        Next
      Next
     })

End Class