// file: BeginInvoke.prg
// An example for an asynchronous method call

using System.Threading

Delegate AsyncMethodCaller(i As Int) As Int

// Just a class definition for a static method
Class Toolbox

   // Long running method that should be better called asynchronously
   Static Method DoSomething(Count As Int) As Int
     ? "Starting..."
     Local Fuel := 1000 As Int
     For Local i := 1 UpTo Count
         Thread.Sleep(500)
         Fuel -= 100
     Next
     ? "Ending..."
     Return Fuel

End Class

// *** Main Entry Point ***
Function Start() As Void
   // no parantheses
   var caller := AsyncMethodCaller{Toolbox.DoSomething}
   // Call DoSomething() asynchronously and get an IAsyncResult object back
   var result := caller:BeginInvoke(3,null,null)
   // Life goes on...
   ? "Finished..."
   // Simulates a wait
   Console.ReadLine()
   // Get the result back
   var returnValue := caller.EndInvoke(result)
   ? returnValue