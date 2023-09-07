// file: XS_DataTableCreate.prg
// An example for creating an empty DataTable and adding columns and rows

using System.Data
using System.IO

Function Start() As Void
  var ta := DataTable{"Cars"}
  ta:Columns:Add(DataColumn{"Id", typeof(Int)})
  ta:Columns:Add(DataColumn{"Name", typeof(String)})
  ta:Columns:Add(DataColumn{"Year", typeof(Int)})
  ta:Columns:Add(DataColumn{"Price", typeof(Double)})
  var r := ta:NewRow()
  r["Id"] := 1
  r["Name"] := "De Tomaso P72"
  r["Year"] := 2019
  r["Price"] := 1.3E6
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 2
  r["Name"] := "La Ferrari"
  r["Year"] := 2013
  r["Price"] := 1.4E6
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 3
  r["Name"] := "Aston Martin Vulcan"
  r["Year"] := 2014
  r["Price"] := 2.3E6
  ta:Rows:Add(r)
  ForEach row As DataRow in ta:Rows
    var carPrice := Double.Parse(row["Price"]:ToString()):ToString("C")
    ?i"A car of the type {row[""Name""]} costs as little as {carPrice}"
  Next
  var xmlPath := Path.Combine(Environment.CurrentDirectory, "ExpensiveCars.xml")
  ta:WriteXml(xmlPath,XmlWriteMode.WriteSchema)
  ?i"{xmlPath} saved"
  