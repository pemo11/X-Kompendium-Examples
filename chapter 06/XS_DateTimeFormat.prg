// file: XS_DateTimeFormat.prg
// Getting different parts of a DateTime with formating strings

Function Start() As Void
    var todayDate := DateTime:Now
    ? i"Today: {todayDate.ToString()}"
    ? i"Year: {todayDate.ToString(""yyyy"")}"
    ? i"Month: {todayDate.ToString(""MM"")}"
    ? i"Day: {todayDate.ToString(""dd"")}"
    ? i"Hour: {todayDate.ToString(""HH"")}"
    ? i"Minutes: {todayDate.ToString(""mm"")}"
    ? i"Seconds: {todayDate.ToString(""ss"")}"
    ? i"Milliseconds: {todayDate.ToString(""fff"")}"