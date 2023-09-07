// file: XS_TimerExample1.prg
// Timer-Events - option A
using System
using System.Timers

function ElapsedHandler(Sender As Object, e As EventArgs) as Void
    ? "Elapsed..."

Function Start() As Void
   var tmr := Timer{}
   tmr:Interval := 1000
   tmr:elapsed += ElapsedEventHandler{ElapsedHandler}
   tmr:Start()
   Console.WriteLine("Press any key please...")
   Console.ReadLine()

