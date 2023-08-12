// file: 16_DataTableWithPrimaryKey.prg
// Example for creating an new DataTable with a PrimaryKey constraint

using System.Data

Function Start() As Void
  var ta := DataTable{"Cars"}
  ta:Columns:Add(DataColumn{"Id", typeof(Int)})
  ta:Columns:Add(DataColumn{"Name", typeof(String)})
  ta:Columns:Add(DataColumn{"Year", typeof(Int)})
  ta:Columns:Add(DataColumn{"Price", typeof(Double)})
  // Assing a DataColumn as as primary key as element of an array
  ta:PrimaryKey := <DataColumn>{ta:Columns["Id"]}
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
  // This primary violation
  r["Id"] := 2
  r["Name"] := "Aston Martin Vulcan"
  r["Year"] := 2014
  r["Price"] := 2.3E6
  ta:Rows:Add(r)