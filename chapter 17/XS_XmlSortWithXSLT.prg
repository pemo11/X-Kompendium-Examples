// file: XS_XmlSortWithXSLT.prg
// Sorting an Xml file with XSLT

using System.IO
using System.Linq
using System.Xml.Xsl

Function Start() As Void
   var xmlPathUnsorted := Path.Combine(Environment.CurrentDirectory, "Books_Unsorted.xml")
   var xmlPathSorted := Path.Combine(Environment.CurrentDirectory, "Books_Sorted.xml")
   var xlstPath := Path.Combine(Environment.CurrentDirectory, "SortBook.xslt")
   var xslTransform := XslCompiledTransform{}
   xslTransform:Load(xlstPath)
   xslTransform.Transform(xmlPathUnsorted, xmlPathSorted)
   ? "The transformation was successfull!"
