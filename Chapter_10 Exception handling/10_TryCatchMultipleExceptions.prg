// file: 10_TryCatchMultipleExceptions.prg
// Handle multiple exceptions with one catch
Using System
Using System.Collections

Function Start() As Void
   Console.WriteLine("A. SystemException")
   Console.WriteLine("B. DivideByZeroException")
   Console.WriteLine("C. ArgumentException")
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
   Catch ex As SystemException
   	If ex is DivideByZeroException || ex is ArgumentOutOfRangeException
           ? i"I have just handled a {ex.GetType().Name} exception!"
	Else
      	  ? i"I have just handled a SystemException! (type={ex.GetType().Name})"
        EndIf
   End Try
