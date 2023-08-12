// file: 17_XmlCreateElement.prg
// Example for creating an element with attributes and child elements

using System.Xml.Linq

Function Start() As Void
  var book := XElement{"book",;
                XAttribute{"id", "0-9160-6428-X"},;
                XElement{"author", "pemo",;
                  XAttribute{"id", "010110"},;
                  XElement{"birthplace", "Aurich"},;
                  XElement{"birthyear", 1963}},;
                XElement{"title", "Why 42 is not the answer"}}
  ? book:ToString()              