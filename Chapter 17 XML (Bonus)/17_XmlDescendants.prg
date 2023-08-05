// file: 17_XmlDescendants.prg
// Example for getting author elements of books.xml as decendants

using System.IO
using System.Xml.Linq

Function Start() As Void
    var xmlPath := Path.Combine(Environment.CurrentDirectory, "books.xml")
    var xDoc := XDocument.Load(xmlPath)
    Var autoren := xDoc:Descendants("author")
    Foreach autor As XElement In autoren
        ? i"Author = {autor.Value}"
    Next
            
