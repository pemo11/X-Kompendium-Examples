// file: XS_DoCaseSwitch.prg
// A simple switch with Do Case

Function Start() As Void
  Local Score := "No Score" As String
  ?"Grade? "
  Local Grade := Console.ReadLine() As String
  Do Case
      Case Grade == "A"
          Score := "Really superb, top notch"
      Case Grade == "B"
          Score := "Excellent"
      Case Grade >= "C"
          Score := "Good but there is room for improvements"
      Case Grade == "E*"
          Score := "Sure you can do better"
      Otherwise
          Score := "Don't give up, try again"
  End Case
  ? Score