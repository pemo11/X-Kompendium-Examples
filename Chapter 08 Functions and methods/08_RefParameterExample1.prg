// file: 08_RefParameterExample1.prg
// Example for ref parameter with the TryParse method in a class definition

Class Person
    Internal Property Name As String Auto

    Internal Static Method TryParse(Text As String, Value Ref Person) As Logic
        Value := Person{}{Name := Text}
        Return True

    Public Method ToString() As String
        Return i"Name={Self.Name}"

End Class

Function Start() As Void
    Local p := Null As Person
    If Person.TryParse("Hugo", ref p)
      ? p
    Else
      ? "Not working, sorry"
    EndIf