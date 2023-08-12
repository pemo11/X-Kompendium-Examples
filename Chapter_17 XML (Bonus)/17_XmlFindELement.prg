// file: 17_XmlFindElement.prg
// Example for finding an Xml element

using System.IO
Using System.Linq
using System.Xml.Linq

Function Start() As Void
    var xmlPath := Path.Combine(Environment.CurrentDirectory, "books.xml")
    var xDoc := XDocument.Load(xmlPath)
    var id := "1000"
    // Using LINQ query comprehensions is only an option
    var xBook := (From book In xDoc:Descendants("book") Where book:Attribute("id"):Value == Id Select book):SingleOrDefault()
    ? xBook:ToString()
	? i"Type={xBook.GetType().FullName}"
