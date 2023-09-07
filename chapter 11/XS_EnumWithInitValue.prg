// file: XS_EnumWithInitValue.prg
// An enum with a discrete value for a member

/// <summary>
/// Defines the possible colors for a car
/// </summary>
Enum CarColor
    Red
    Green
    Blue
    Yellow
    White := 100
    Black
    Pink
End Enum

function Start() As Void
   Local carColor1 := carColor.White As CarColor
   ? carColor1
