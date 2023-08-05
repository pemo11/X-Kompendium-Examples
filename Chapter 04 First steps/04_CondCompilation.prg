// file: 04_CondCompilation.prg
// For conditional compilation

Function Start() As Void
   #IfDef DEBUG
      ? "*** There are too many bugs:( ***"
   #EndIf
   ? "Hello, World - whats the matter?"
