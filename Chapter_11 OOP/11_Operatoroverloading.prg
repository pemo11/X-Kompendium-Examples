// file: 11_Operatoroverloading.prg
// Operator overloading the + operator for a reference type

Class Address
    Internal Property Name As String Auto
    
    Constructor(Name As String)
        Self:Name := Name

    Static Operator + (A1 As Address, A2 As Address) As Address
      Return Address{i"{A1.Name}-{A2.Name}"}

    Public Method ToString() As String
        Return i"Name={Self.Name}"
End Class

Function Start() As Void
    var a1 := Address{"Hugo"}
    var a2 := Address{"Boss"}
    ? a1 + a2
