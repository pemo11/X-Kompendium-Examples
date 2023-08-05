// file: 11_PolymorphismWithInterfaces.prg
// An example for Polymorphism through interfaces
using System.Collections.Generic

Interface IVehicle
   Public Property Id As String Auto
   Public Method Drive(Distance As Single) As Void
End Interface

// Define independent classes
Class SUV Implements IVehicle
  Property Id As String Auto
  Method Drive(Distance As Single) As Void
    Console.WriteLine(i"{Self:Id}:My Lexus NX300 is ploughing its ways to the traffing with a distance of {Distance} km")

  Method ToString() As String
    Return i"Type SUV Id:={Self:Id}"

End Class

Class Car Implements IVehicle
  Property Id As String Auto
  Method Drive(Distance As Single) As Void
   Console.WriteLine(i"{Self:Id} is driving a distance of {Distance} km")
  Method ToString() As String
    Return i"Type SUV Id:={Self:Id}"

End Class

Function Start() As Void
  // Define instances of Car and SUV
  var car1 := Car{}{Id:="Car1"}
  var suv1 := Suv{}{Id:="SUV1"}
  // Create a generic List for objects that implement IVehicle
  Local vehicles := List<IVehicle>{} As List<IVehicle>

  // Add the instances to the list
  vehicles:Add(car1)
  vehicles:Add(suv1)

  // Enumerate the list of IVehicle objects
  ForEach var vehicle In vehicles
      // Achive polymorphis by calling the different implementation of the Drive() method
      vehicle:Drive(100)
      // Call the overwritten ToString() method too
      Console.WriteLine(vehicle:ToString())
  Next
