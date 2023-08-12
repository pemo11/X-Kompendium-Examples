// file: 08_TryParseWithRef.prg
// Example for ref parameter with the TryParse method

Function Start() As Void
   Console.WriteLine("Enter your code (numbers only)")
   Var input := Console.ReadLine()
   Var number := 0
   If Int32.TryParse(input, ref Number)
      Console.WriteLine(i"Thank you for the number ({number})!")
   Else
      Console.WriteLine("How dare you, this was not a number!")
   EndIf
