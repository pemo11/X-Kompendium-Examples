// file: XS_XmlXPathVersusLing.prg
// Comparison of XPath with LINQ

using System.IO
using System.Linq
using System.Xml.Xpath
using System.Xml.Linq

Function Start() As Void
  var xmlPath := Path.Combine(Environment.CurrentDirectory, "books.xml")
  var xDoc := XDocument.Load(xmlPath)
 
  var xPathExpr := "//book[@pubYear > 2000]"
  var books2000 := xDoc:XPathSelectElements(xPathExpr)
  ForEach var el in books2000
    ? Class { title := el:Element("title"):Value, author := el:Element("author"):Value}
  Next
  
  books2000 := from b in xDoc:Descendants("book") Where Int32:Parse(b:Attribute("PubYear"):Value) > 2000 Select b
  ? books2000:GetType():FullName
  
  ForEach var el in books2000
    ? Class { title := el:Element("title"):Value, author := el:Element("author"):Value }
  Next
