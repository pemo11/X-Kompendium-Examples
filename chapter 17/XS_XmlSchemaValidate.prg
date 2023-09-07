// file: XS_XmlSchemaValidate.prg
// Example for XML Schema validation

using System.Xml.Linq
using System.Xml.Schema

Function Start() As Void
  var xsdPath := "Books.xsd"
  var xmlPath := "Books.xml"
  
  Local schemaSet := XmlSchemaSet{} As XmlSchemaSet
  
  schemaSet:Add(null, xsdPath)
  
  var xDoc := XDocument.Load(xmlPath)
 
  xDoc:Validate(schemaSet, { sender, e => 
    ? "Validation-Result: " + e:Message
  })
  