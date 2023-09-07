// file: XS_XmlCreateDocumntWithParse.prg
// Example for creating an xml document from text

using System.IO
using System.Xml.Linq

Function Start() As Void
    Local xmlText := "" As String
    xmlText += "<?xml version='1.0' encoding='ISO-8859-1'?>"
    xmlText += "<books>"
    xmlText += "<book id='1000' pubYear='2010'>"
    xmlText += "<author>Susi</author>"
    xmlText += "<title>C# is the best</title>"
    xmlText += "</book>"
    xmlText += "<book id='1001' pubYear='2012'>"
    xmlText += "<author>Pemo</author>"
    xmlText += "<title>X# is much better</title>"
    xmlText += "</book>"
    xmlText += "<book id='1002' pubYear='1968'>"
    xmlText += "<author>Guss</author>"
    xmlText += "<title>Cobol is the future</title>"
    xmlText += "</book>"
    xmlText += "</books>"
    var xDoc := XDocument.Parse(xmlText)
    ?xDoc:ToString()
    var xmlPath := Path.Combine(Environment.CurrentDirectory, "Books.xml")
    xDoc:Save(xmlPath)