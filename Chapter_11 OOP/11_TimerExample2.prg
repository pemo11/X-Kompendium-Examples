// file: 11_TimerExample2.prg
// Timer-Events - option B
using System
using System.Timers

Function Start() As Void
   var tmr := Timer{}
   tmr:Interval := 1000
   tmr:elapsed += Delegate(Sender As Object, e As ElapsedEventArgs) {
    ? "Elapsed..."
   }
   tmr:Start()
   Console.WriteLine("Press any key please...")
   Console.ReadLine()
