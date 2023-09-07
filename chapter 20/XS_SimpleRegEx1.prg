// file: XS_SimpleRegEx1.prg
// a very simple example for using a regex

using System.Text.RegularExpressions

Function Start() As Void
   var idList := <String>{"PC-001","SYS_4","PCX","SERV123","COMP-9X"}
   // This pattern should get the name and number of every system name
   var pat := "\w+[-_]*\d+"
   ForEach var id in idList
      // Is there a match?
      If Regex.IsMatch(id, pat)
         // Say you matched thats all I want to hear
         ? i"match for {id}"
      Else
         // no match today
         ? i"no match for {id}"
      EndIf
   Next