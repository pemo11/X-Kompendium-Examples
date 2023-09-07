// file: XS_NullCoalescing.prg
// the null coalescing operator
// ?? returns the value of its left-hand operand if it isn't null
// otherwise, it evaluates the right-hand operand and returns its result

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
    var p := Person{}{Name := "Mike Farrell"}
    var address := p:Address ?? Address{}{City:="No City"}
    ?i"Address = {address}"
    p:Address ??= Address{}{City:="Tokiyo"}
    ?i"Address = {p.address}"
 
