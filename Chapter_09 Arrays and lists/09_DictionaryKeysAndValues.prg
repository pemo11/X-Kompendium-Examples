// file: 09_DictionaryKeysAndValues.prg
// Examples for querying keys and values of a Dictionary<S, T>

using System.Collections.Generic

Function Start() As Void
   var d1 := Dictionary<String, Logic>{}
   // regular query
   If d1:ContainsKey("K1")
      d1["K1"] := True
      ?d1["K1"]
   Else
      ? "No key..."
   EndIf
   Local d2 As Dictionary<String, Logic>
   d1?:Add("K1", True)
   // No exception
   d2?:Add("K2", True)
   ?d1["K1"]
   // Gives a NullReferenceException (of course)
   // ?d2["K2"]
   // Check for an existing key/value
   Local dValue As Boolean
   if d1:TryGetValue("K1", out dValue)
     ? i"K1: {dValue}"
   Else
     ? "No Value for K1"
   EndIf
   If d1:TryGetValue("K2", out dValue)
     ? i"K2: {dValue}"
   Else
     ? "No Value for K2"
   EndIf
   
   // Check for value only
   ? d1?:ContainsValue(True)
   ? d2?:ContainsValue(True)

   // This does not work and will give a KeyNotFoundException
   ? d1?["K2"]

