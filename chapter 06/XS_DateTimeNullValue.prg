// file: XS_DateTimeNullValue.prg
// Using DateTime? instead of DateTime

Function Start() As Void
    Local d As DateTime?
    d := Null
    ? i"The value of d: {d.HasValue}"
    d := DateTime.Now
    ? i"The value of d: {d.HasValue}"
    Return
