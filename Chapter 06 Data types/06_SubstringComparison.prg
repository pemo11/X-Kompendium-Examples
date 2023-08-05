// file: 06_SubstringComparison.prg
// Comparison of SubStr() function and SubString() method
// Compile with /dialect:VO

Function Start() As Void
   var s1 := "Rio Bravo"
   ?SubStr(s1,1,3)        // Returns Rio
   ?s1:Substring(0,1)     // Returns R
   ?s1:Substring(0,3)     // Returns Rio
   ?s1:Substring(4)       // Returns Bravo
   ?s1:Substring(4,1)     // Returns B

