// file: 04_CondCompilation2.prg
// Conditional compilation with an arbitrary constant
using System.Diagnostics

[Conditional("Special")];
Function Spezial() As Void
   ? "This is a special information..."

Function Start() As Void
   Spezial()
   ?"This is a normal information..."   
