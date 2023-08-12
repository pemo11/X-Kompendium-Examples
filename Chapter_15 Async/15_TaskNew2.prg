// File: 15_TaskNew2.prg
// Example for creating a new task with the Run() method

using System.Threading
using System.Threading.Tasks

Function NewTask() As Void
  var Limit := 10
   // Special syntax - Delegate because async does not work with 
   // an lambda expression?
   // async needed because of await Task.Delay()
   var t := Task.Run( async Delegate {    
      For Local i := 1 UpTo Limit
         ? i"The current thread ID: {Thread.CurrentThread.ManagedThreadId}"
         // Delay() returns a task that has to be awaited
         await Task.Delay(1000)
      Next
   })
   // Wait for the task otherwise there is nothing to see
   t:Wait()

  
Function Start() As Void
  NewTask()
