// file: 17_SortXmlFile.prg
// Sorting an Xml file by its node or attributes values

using System.IO
using System.Linq
using System.Xml.Linq

Function Start() As Void
   var xmlPathUnsorted := Path.Combine(Environment.CurrentDirectory, "Books_Unsorted.xml")
   var xmlPathSorted := Path.Combine(Environment.CurrentDirectory, "Books_Sorted.xml")
   var xlRoot := XElement.Load(xmlPathUnsorted)
   // this is a really great syntax for combining several actions into one command!
   var orderedBooks := xlRoot:Elements("book") ;
                      .OrderBy({xbook => (Int)xbook:Attribute("id")}) ;
                      .ToArray()
   // remove all nodes
   xlRoot:RemoveAll()
   
   // add each node in sorted order
   ForEach var xBook in orderedBooks
      xlRoot:Add(xBook)
   Next
   
    // save the sorted nodes (usually it would be the same file)
   xlRoot:Save(xmlPathSorted)
   ? i"{xmlPathSorted} written..."