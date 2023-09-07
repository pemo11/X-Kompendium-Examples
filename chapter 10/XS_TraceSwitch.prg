// file: XS_TraceSwitch.prg
// Example for a trace switch that allows to control traces messages through the config file
using System.Diagnostics

Function Start() As Void
   Console.WriteLine("*** A regular message ***")
   Local boolSwitch := BooleanSwitch{"XSwitch", ""} As BooleanSwitch
   If boolSwitch:Enabled
      Console.WriteLine(i"*** A special trace message at {DateTime.Now.ToString(""t"")} ***")
   EndIf
