// file: XS_XmlUpdateElement.prg
// Example for updating an element

using System.IO
using System.Linq
using System.Xml.Linq

Function Start() As Void
    If Environment.GetCommandLineArgs():Length != 2
       ? "Call 17_XmlUpdateElement.exe with an id as the only argument!"
       Environment.Exit(-1)
    EndIf
    var id := Environment.GetCommandLineArgs()[2]:ToString()
    var xmlPath := Path.Combine(Environment.CurrentDirectory, "books.xml")
    var xDoc := XDocument.Load(xmlPath)
    // Find the node
    var xBook := xDoc:Descendants("book"):Where({b => b:Attribute("id"):Value == Id}):SingleOrDefault()
    If xBook == Null
      ? i"*** No Book with Id={Id} found!"
    Else
      // update the node
      xBook:Element("title"):Value := xBook:Element("title"):Value + " - Updated"
      ?xDoc:ToString()
      // And save the xml to a file
      xDoc:Save(xmlPath)
    EndIf

