// file: 11_TimerExample3.prg
// Timer-Events - option C

using System
using System.Timers

Function Start() As Void
   var tmr := Timer{}
   tmr:Interval := 1000
   tmr:elapsed += {Sender, e => 
    ? "Elapsed..."
   }
   tmr:Start()
   Console.WriteLine("Press any key please...")
   Console.ReadLine()
