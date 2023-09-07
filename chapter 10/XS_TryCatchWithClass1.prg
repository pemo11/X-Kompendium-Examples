// file: XS_TryCatchWithClass1.prg
// A simple try/catch with a specific exception class

using System

Function Start() As Void
  Try
    var i := 0
    var z := i / i
    ? z 
  Catch ex As DivideByZeroException
    ? i"Error: {ex}"
  End try
