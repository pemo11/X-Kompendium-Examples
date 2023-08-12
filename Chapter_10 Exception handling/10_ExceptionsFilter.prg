// file: 10_ExceptionsFilter.prg
// Example for an exception filter
using System.Collections

Function Start() As Void
    Console.WriteLine("A. Generate a SystemException")
    Console.WriteLine("B. Generate a DivideByZeroException")
    Console.WriteLine("C. Generate an ArgumentOutOfRangeException")
    Console.WriteLine("Make your choice: A,B or C?")
    var choice := Console.ReadLine()
    Try
      Switch choice:SubString(0,1):ToUpper()
        Case "A"
          Throw SystemException{"Never choose option A"}
        Case "B"
         var a := 0
         var b := 0
         ? a / b
        Case "C"
         var list := ArrayList{}
         ? list[1]
      End Switch
    Catch ex As SystemException when ex is ArgumentOutOfRangeException || ex is ArgumentException
        ? "I have just handled a ArgumentOutOfRangeException!"
    Catch ex As SystemException when ex is DivideByZeroException
        ? "I have just handled a DivideByZeroException"
    Catch ex As SystemException
        ? i"I have just handled a {ex.GetType().Name} exception!"
    End try
