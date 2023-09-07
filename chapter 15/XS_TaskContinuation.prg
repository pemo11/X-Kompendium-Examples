// file: XS_TaskContinuation.prg
// An example for ContinueWith()

using System.Threading.Tasks

Class App

   Static Async Method StartTask() As Void
      await Task.Run(async Delegate {
        ?"Downloading many files with will take a long time..."
        await Task.Delay(2000)
      }):ContinueWith({ t => 
        ?"Mission accomplished (press Return) ..."
      })
      
End Class

Function Start() As Void
    App.StartTask()
    ?"Already at the last line because we were not waiting..."
    Console.ReadLine()
              
         