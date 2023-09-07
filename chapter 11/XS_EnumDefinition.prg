// file: XS_EnumDefinition.prg
// The example for an enum definition

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

Function Start() As Void
   Local carColor1 := CarColor.Red As CarColor

   If carColor1 == CarColor.Red
     ? "*** The color is red ***"
   End if
