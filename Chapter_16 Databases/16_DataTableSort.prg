// file: 16_DataTableSort.prg
// Example for sorting a DataTable

using System.Data
using System.Linq

Function Start() As Void
  var ta := DataTable{"Cars"}
  ta:Columns:Add(DataColumn{"Id", typeof(Int)})
  ta:Columns:Add(DataColumn{"Name", typeof(String)})
  ta:Columns:Add(DataColumn{"Year", typeof(Int)})
  ta:Columns:Add(DataColumn{"Price", typeof(Double)})
  var r := ta:NewRow()
  r["Id"] := 1
  r["Name"] := "Aston Martin Vulcan"
  r["Year"] := 2014
  r["Price"] := 2.3E6
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 2
  r["Name"] := "La Ferrari"
  r["Year"] := 2013
  r["Price"] := 1.4E6
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 3
  r["Name"] := "De Tomaso P72"
  r["Year"] := 2019
  r["Price"] := 1.3E6
  ta:Rows:Add(r)
  var sortedForPrice := (from row as DataRow in ta:Rows OrderBy row["Price"] Select row):ToList()
  ForEach var row in sortedForPrice
   ?i"A {row[""Name""]} costs {row[""Price""]}"
  Next