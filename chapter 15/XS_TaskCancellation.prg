// file: XS_TaskCancellation.prg
// An example for the cancellation of a task

using System.Threading
using System.Threading.Tasks

Function StartTask() As Task
  var cts := CancellationTokenSource{}
  var t := Task.Run(async Delegate {
      For Local i := 1 UpTo 10
        ? i"Looping the {i}th time..."
        await Task.Delay(1000)
        If i == 7
           cts:Cancel()
        EndIf
        If cts:Token:IsCancellationRequested
           cts:Token:ThrowIfCancellationRequested()
        EndIf
      Next
     }, cts:Token):ContinueWith({ task => 
       If task:IsCanceled
         ?"Zee task was cancelled prematurely!"
       EndIf
     })
    t:Wait()
  Return t

Function Start() As Void
  StartTask()
