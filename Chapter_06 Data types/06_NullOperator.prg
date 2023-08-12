// file: 06_NullOperator.prg
// Using the null operators ?. and ?:

Class Address
    Internal Property Street As String Auto
    Internal Property City As String Auto
    Internal Property Zip As String Auto
    Internal Property Country As String Auto

    Public Method ToString() As String
        Return i"{Street},{City},{Zip},{Country}"
    End Method

End Class

Class Person
   Internal Property Name As String Auto
   Internal Property BirthDate As DateTime Auto
   Internal Property Address As Address Auto
End Class

Function Start() As Void
    var p := Person{}{Name := "Alan Alda"}
    // Results a null reference exception
    // var city := p:Adress:City
    // No problemo - city will be null
    var city := p?:Address?:City
    ?i"City = {city} (IsNull={city == Null})"
    p:Address := Address{}{Street := "123 Main St",City :="New York",Zip :="10001",Country :="USA"}
    ? i"Address = {p?.Address}"
