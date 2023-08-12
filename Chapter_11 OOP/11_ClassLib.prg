// file: 11_ClassLib.prg
// Example for a class lib

Begin Namespace XLib

  Class Misc

     Static Method GetNumber(Max := 100 As Int) As Int
         Return Random{}:Next(1,Max)

  End Class

End Namespace
