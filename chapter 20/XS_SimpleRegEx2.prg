// file: XS_SimpleRegEx2.prg
// a little for advanced example for using a regex

using System.Text.RegularExpressions

Function Start() As Void
   var idList := <String>{"PC-001","SYS_4","PCX","SERV123","COMP-9X"}
   // Now the pattern uses groups () and there is a small change in the regex too
   var pat := "([A-Z]+)[-_]*(\d+)"
   ForEach var id in idList
      If Regex.IsMatch(id, pat)
         // Get a collection of Match objects
         var matches := Regex.Matches(id, pat)
         ForEach m As Match in matches
            // get the content of the two matched groups
            ?i"Name: {m.Groups[1].Value} Id: {m.Groups[2].Value}"
         Next
      Else
         // no match today
         ? i"no match for {id}"
      EndIf
   Next