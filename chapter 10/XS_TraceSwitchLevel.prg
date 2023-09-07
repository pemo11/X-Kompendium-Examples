// file: XS_TraceSwitchLevel.prg
// Example tracing with switch level to display only certain trace message types
// Tracel = Off (0), Error (1), Warning (2), Info (3), Verbose (4)
Using System.Diagnostics

Function Start() As Void
  var switch1 := TraceSwitch{"Switch1", ""}
  If switch1:TraceInfo
     Console.WriteLine("*** A info level message ***")
  EndIf
  Console.WriteLine("*** A regular message ***")
