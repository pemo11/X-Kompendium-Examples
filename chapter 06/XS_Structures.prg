// file: XS_Structures.prg
// Defining a structure

Structure Address
   Internal Property City As String Auto

   Public Method ToString() As String
      Return i"City={Self.City}"
End Structure 

Structure Person
   Internal Property Name As String Auto
   Internal Property Address As Address Auto

   Public Method ToString() As String
      Return i"Name={Self.Name} City={Self.Address.City}"

End Structure

Function Start() As Void
    var a := Address{}{City := "Llanfairpwllgwyngyll"}
    var p := Person{}{Name := "Tom Jones",Address:=a}
    ?p
