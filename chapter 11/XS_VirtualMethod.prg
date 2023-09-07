// file: XS_VirtualMethod.prg
// Example for virtual methods
using System.Collections.Generic

Class Vehicle

   Internal Virtual Method Drive() As Void
        Console.WriteLine("I am driving a vehicle")

End Class


Class Car Inherit Vehicle

   Internal Override Method Drive() As Void
        Console.WriteLine("I am driving a car")

End Class

Function Start() As Void
    // v will be of type vehicle
    Local v := Vehicle{} As Vehicle
    // c will be of type car
    Local c := car{} As Vehicle
    // put both objects into a list
    var l := List<Vehicle>{}
    l:Add(v)
    l:Add(c)
    ForEach c1 As Vehicle in l
      c1:Drive()
    Next
 
