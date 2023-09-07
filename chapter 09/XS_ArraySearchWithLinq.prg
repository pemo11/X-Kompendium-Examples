// file: XS_ArraySearchWithLinq.prg
// Searching a VO array with LINQ
// compile with xsc .\XS_ArraySearchWithLinq.prg /r:XSharp.Core.dll /r:XSharp.Rt.dll

using System.Linq

Function Start() As Void
  Local aValues := {} As Array
  AAdd(aValues, {"A", 1000})
  AAdd(aValues, {"A", 2000})
  AAdd(aValues, {"B", 100})
  AAdd(aValues, {"B", 200})
  Var Values := (From w In aValues Where w[1] == "A" Select w[2]):ToList()
  For Local i := 0 Upto Values:Count - 1
      ?Values[i]
  Next
