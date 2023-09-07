// file: XS_IfElseEndIf.prg
// A small example for if, elseif and endif

Function Start() As Void
   var weekday := DateTime.Now:ToString("dddd")
   var curHour := DateTime.Now:Hour
   If weekday == "Samstag" && weekday == "Sonntag"
      ? "Enyoy our weekend"
   ElseIf curHour >= 8 || curHour <= 17
      ? i"Today is {weekday}, so GoTo work or enjoy your lunch break"
   EndIf 