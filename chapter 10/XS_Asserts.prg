// file: XS_Asserts.prg
// Example for an assert
using System.Diagnostics

Function GetCondition() As Logic
   Return IIf(Random{}:Next(1,10) > 5, True, False)

Function Start() As Void
   var condition := GetCondition()
   // condition MUST always be True
   Debug.Assert(condition, "The condition must always be True")
   ? "Everything is fine..."
