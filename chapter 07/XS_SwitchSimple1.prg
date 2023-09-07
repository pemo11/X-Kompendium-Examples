// file: XS_SwitchSimple1.prg
// A simple switch case

Function Start() as void
  Local Score := "No Score" As String
  ? "Grade?"
  var Grade := Console.Readline()
  Switch Grade
      Case "A"
          Score := "Really superb, top notch"
      Case "B"
          Score := "Excellent"
      Case"C"
          Score := "Very good"
      Case "D"
          Score := "Goo but there is room for improvements"
      Case "E"
          Score := "Sure you can do better"
      Case "F"
          Score := "Don't give up, try again"
      Otherwise
          Score := "Unknown score"
  End Switch
  ? i"Grade: {Grade} Score: {Score}"
