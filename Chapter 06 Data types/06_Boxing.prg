// file: 06_Boxing.prg
// A very simple example for boxing

Function Start() As Void
   Local i:= 1234 As Int
   // Now comes boxing
   Local o := i As Object
   Console.WriteLine(o:ToString())