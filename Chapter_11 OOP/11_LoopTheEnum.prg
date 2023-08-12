// file: 11_LoopTheEnum.prg
// Loop easily through an enum

using static Weekdays

Enum Weekdays
  Monday
  Thuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday
End Enum
 
Function Start() as Void
    For var WDay := Monday UpTo(Sunday)
      ? i"Lets celebrate {wDay}!"
    Next
    ? "Lets celebrate everyday!"
