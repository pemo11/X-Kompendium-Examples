// file: 07_RepeatUntilWithSkip.prg
// Simple exit of a loop

Function Start() As Void
  var counter := 10
  Repeat
     counter--
     var z := Random{DateTime.Now:Millisecond}:Next(1,10)
     if z < 5
       Loop
     endif
     ? i"*** Counting {counter} ***"
  Until counter == 0
  ? "*** Finito ***"