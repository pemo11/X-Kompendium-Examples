// file: XS_String2Chars.prg
// Getting single characters from a string

using System.Linq

Function Start() As Void
  var s1 := "Odysee 2001 in spaces"
  ? s1[0]
  ? s1[1]
  // ? s1[-1] does not work - no negative index
  // ? s1[0..1] does not work either in Cahors 2.x
  // Returns O and y
  var charList := s1:ToCharArray():Where({c, i => i == 0 || i == 2}):ToList()
  ForEach var c in charList
    ?c
  Next
