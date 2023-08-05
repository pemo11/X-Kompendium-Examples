// file: 11_PropertyDefinition3.prg
// The modern way of defining a a class property

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
    Public Property CarColor As CarColor Auto
    Public Property Model As String Auto
    
    Public Method ToString() As String
       Return i"Model: {Self:Model} Color: {Self:CarColor}"
      
End Class
 
Function Start() As Void
   var car1 := Car{}
   car1:Model := "Ford Escort"
   ? car1:Model
