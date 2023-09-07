// file: XS_PropertyDefinition1.prg
// The formal definition of a class property

/// <summary>
/// Defines the possible colors for a car
/// </summary>
Enum CarColor
     Red
     Green
     Blue
     Yellow
     White
     Black
     Pink
End Enum

Class Car
    Private _Model As String
    Private _Color As CarColor

    Public Property Model As String
        Get
            Return _Model
        End Get
        Set
            Self:_Model := Value
        End Set
    End Property
    
    Public Method SetColor(Color As CarColor) As Void
       Self:_Color := Color
       
    Public Method ToString() As String
       Return i"Model: {Self:_Model} Color: {Self:_Color}"
      
End Class
 
Function Start() As Void
    var car1 := Car{}
    car1:Model := "Ford Escort"
    ? car1:Model
