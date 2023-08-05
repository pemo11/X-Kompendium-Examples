// file: 04_DebugVsTrace.prg
// Debug versus Trace
using System.Diagnostics

Class ConsoleListener Inherit TraceListener
    Public Override Method Write(Message As String) As Void
        ? Message
    Public Override Method WriteLine(Message As String) As Void
        ? Message
End Class

Function Start() As Void
  Debug:Listeners:Add(ConsoleListener{})
  ? "*** This ia a recular information ***"
  Debug.WriteLine("*** This is a debug information ***")
  Trace.WriteLine("*** This ia trace information ***")
