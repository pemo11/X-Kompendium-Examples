// file: XS_SwitchWithWhen.prg
// Combining a switch case with a when filter

Enum ThreadLevel
  Low
  Medium
  High
End Enum

Function Start() As Void
    Var level := ThreadLevel.Medium
    Var exerciseMode := true
    Var message := ""
    Switch Level
        Case ThreadLevel.Low When exerciseMode == True
            message := "Low danger"
        Case ThreadLevel.Low 
            message := "Low danger but be alert"
        Case ThreadLevel.Medium When ExerciseMode == True
            message := "Medium danger"
        Case ThreadLevel.Medium
            message := "Medium danger so be aware"
        Case ThreadLevel.High When ExerciseMode == True
            message := "High alert but nothing to worry"
        Case ThreadLevel.High
            message := "High alert - evacuate immediately"
    End Switch
    ? message

