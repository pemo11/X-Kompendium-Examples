// file: XS_PropertyDefinition2.prg
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
    Private _CarColor As CarColor
    Private _Model As String
    Public Property CarColor As CarColor Get _CarColor Set _CarColor := Value
    Public Property Model As String Get _Model Set _Model := Value
    
    Public Method ToString() As String
       Return i"Model: {Self:_Model} Color: {Self:_CarColor}"
      
End Class
 
Function Start() As Void
  var car1 := Car{}
  car1:Model := "Ford Escort"
  ? car1:Model
