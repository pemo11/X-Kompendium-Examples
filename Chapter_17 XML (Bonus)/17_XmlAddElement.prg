// file: 17_XmlAddElement.prg
// Example for adding an XElement with attributes

using System.IO
using System.Xml.Linq

Function Start() As Void
    var xmlPath := Path.Combine(Environment.CurrentDirectory, "books.xml")
    var xDoc := XDocument.Load(xmlPath)
    // Add a node
    Local xBook := XElement{"book", XAttribute{"id","1003"}, XAttribute{"pubYear", "2000"},;
      XElement{"author", "Dr. Dobbs"}, XElement{"title", "F# your self with examples"}} As XElement
      xDoc:Element("books"):Add(xBook)
      ? xDoc:ToString()
    xDoc:Save(xmlPath)
