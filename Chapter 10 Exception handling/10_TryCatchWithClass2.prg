// file: 10_TryCatchWithClass2.prg
// A simple try/catch with a specific exception class 
// that raises a different kind of exception

using System
using System.IO

Function Start() As Void
  Try
    File:ReadAllText("C:\DoesNotExist.txt")    
  Catch ex As DivideByZeroException
    ? i"Error: {ex}"
  Catch ex As Exception
    ? i"Error: Exception of type '{ex.GetType().Name}' was caught in the act."
  End try
