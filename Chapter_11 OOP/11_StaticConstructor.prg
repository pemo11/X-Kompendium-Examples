// file: 11_StaticConstructor.prg
// Example of a class with a static constructor

Public Class StaticConstructor

    Static Constructor()
        Console.WriteLine("*** This is the static constructor ***")

    Constructor()
        Console.WriteLine("*** This is the instance constructor ***")

    Static Property Id As Int Auto

End Class

Function Start() as Void
  // Calls the static constructor
  StaticConstructor.Id := 1234
  ? StaticConstructor.Id
