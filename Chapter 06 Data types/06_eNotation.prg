// file: 06_eNotation.prg
// the e notation for strings that contains things like \r,\n or \t

Function Start() As Void
   var text := e"\tKey\tValue"
   ? text
