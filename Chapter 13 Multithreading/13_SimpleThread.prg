// file: 13_SimpleThread.prg
// A simple thread example

using System.Threading

Function DoSomething() As Void
   For var i := 1 UpTo 10
     var threadId := Thread.CurrentThread:ManagedThreadId
     ? i"Running {i}th time in thread {threadId}"
     Thread.Sleep(500)
   Next
     
Function Start() As Void
   For var i := 1 UpTo 3
      var tStart := ThreadStart{DoSomething}
      var t := Thread{tStart}
      t:Start()
   Next