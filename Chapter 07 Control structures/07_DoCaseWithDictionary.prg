// file: 07_DoCaseWithDictionary.prg
// A dictionary as a do case alternative

// Compile with xsc .\DoCaseWithDictionary.prg /dialect:vo /r:XSharp.rt.dll /r:XSharp.Core.dll                                   

using System.Collections.Generic
using System.Linq

// Delegate ScoreAction() As String

function Start() As Void
  var dicAction := Dictionary<Func<String, Boolean>, Func<String>>{} 
  local f1 := { => "You are a genius!" } as Func<String>
  local f2 := { => "Well done" } as Func<String>
  local f3 := { => "Room for improvements" } as Func<String>
  dicAction[{score as String => score == "A"}] := f1
  dicAction[{score as String => score == "B"}] := f2
  dicAction[{score as String => score == "C"}] := f3
  // Enumerate the keys that means all expressions
  Local ClassScores := {} As Array
  AAdd(ClassScores, {"Charles","A"})
  AAdd(ClassScores, {"Steve","A"})
  AAdd(ClassScores, {"Bill","B"})
  AAdd(ClassScores, {"Larry","C"})
  AAdd(ClassScores, {"Robert","A"})
  ForEach var Score in ClassScores
    ForEach var EvalExpr in dicAction:Keys
     If EvalExpr(Score[2])
       ? i"{Score[1]} - {dicAction[EvalExpr]()}"
     EndIf
    Next
  Next