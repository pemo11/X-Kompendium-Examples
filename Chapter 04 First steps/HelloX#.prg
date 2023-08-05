// file: HelloX#.prg
// A very simple X# program for testing the compiler

using System

Function Start() As Void
  var days := (DateTime{DateTime.Now:Year,12,24} - DateTime.Now):Days
  var hint := IIf(days > 183, "still", "only")
  var esc := (Char)27
  ? i"They are {hint} {esc}[32m{days}{esc}[0m days until Christmas"
