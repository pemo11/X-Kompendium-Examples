// file: 17_XmlGetElementWithNamespace.prg 
// Example for using namespace with XElement

using System.Linq
using System.Xml.Linq

Function Start() As Void
    Local xmlText := "" As String
    xmlText += "<?xml version='1.0' encoding='ISO-8859-1'?>"
    xmlText += "<pm:books xmlns:pm='urn:pemobooks'>"
    xmlText += "<pm:book id='1000' pubYear='2010'>"
    xmlText += "<pm:author>Hopper</pm:author>"
    xmlText += "<pm:title>The history of Cobol</pm:title>"
    xmlText += "</pm:book>"
    xmlText += "<pm:book id='1001' pubYear='2012'>"
    xmlText += "<pm:author>Backus</pm:author>"
    xmlText += "<pm:title>The history of Fortran</pm:title>"
    xmlText += "</pm:book>"
    xmlText += "</pm:books>"
    var xDoc := XDocument.Parse(xmlText)
    // ?xDoc:ToString()
    // this does not return elements because the namespace is missing
    var books := xDoc:Descendants("book")
    // outputs 0
    ? books:Count()
    // try again
    // First get a XNamespace object
    var Ns := XNamespace.Get("urn:pemobooks")
    // use the namespace with the overloaded + to construct the name
    books := xDoc:Descendants(ns + "book")
    // Outputs 2
    ? books:Count()
    // outputs "The history of Cobol"
    ? books:ElementAt(0):Element(ns+"title"):Value
    
