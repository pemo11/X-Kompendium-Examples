// file: 10_DebugListenerConfig.prg
// Example for configuring the listener through the config file

using System.Diagnostics

Function Start() As Void
  Console.WriteLine(i"*** A normal message at {DateTime.Now.ToString(""t"")} ***")
  Debug.WriteLine(i"*** A debug message at {DateTime.Now.ToString(""t"")} ***")
