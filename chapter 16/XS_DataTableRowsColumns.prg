// file: XS_DataTableRowsColumns.prg
// An example for accessing the rows and columns of a DataTable

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
  // Accessing the first row
  var row := ta:Rows[0]
  // Accessing columns by index and name
  ?row[1]
  ?row["Price"]
  ?ta:rows[2][1]
  ?ta:rows[2]["Price"]
  