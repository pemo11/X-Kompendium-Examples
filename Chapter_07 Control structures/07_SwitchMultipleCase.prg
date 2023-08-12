// file: 07_SwitchMultipleCase.prg
// A simple switch with multiple case branches

Function Start() As Void
  Local Score := "No Score" As String
  ?"Grade? "
  var Grade := Console.ReadLine()
  Switch Grade
      Case "A+"
      Case "A"
      Case "A-"
          Score := "Really superb, top notch"
      Case "B"
      Case "B+"
          Score := "Excellent"
      Case "B-"
      Case "C"
      Case "C+"
          Score := "Very good"
      Case "D"
          Score := "Good but there is room for improvements"
      Case "E+"
          Score := "You have passed, but sure you can do better"
      Case "E"
          Score := "You have nearly missed it, get better next time"
      Case "F"
          Score := "Don't give up, try again"
      Otherwise
          Score := "Unknown score"
  End Switch
  ? i"Grade: {Grade} Score: {Score}"
