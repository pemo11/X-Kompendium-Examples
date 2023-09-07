// file: XS_DataTableLINQ.prg
// Example for selecting rows with LINQ

using System.Data
using System.Linq

Function Start() As Void
  var ta := DataTable{"Cars"}
  ta:Columns:Add(DataColumn{"Id", typeof(Int)})
  ta:Columns:Add(DataColumn{"Name", typeof(String)})
  ta:Columns:Add(DataColumn{"Year", typeof(Int)})
  ta:Columns:Add(DataColumn{"Country", typeof(String)})
  ta:Columns:Add(DataColumn{"Price", typeof(Double)})
  var r := ta:NewRow()
  r["Id"] := 1
  r["Name"] := "De Tomaso P72"
  r["Year"] := 2019
  r["Price"] := 1.3E6
  r["Country"] := "Italy"
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 2
  r["Name"] := "La Ferrari"
  r["Year"] := 2013
  r["Price"] := 1.4E6
  r["Country"] := "Italy"
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 3
  r["Name"] := "Aston Martin Vulcan"
  r["Year"] := 2014
  r["Price"] := 2.3E6
  r["Country"] := "England"
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 4
  r["Name"] := "Koenigsegg Gemera"
  r["Year"] := 2020
  r["Price"] := 2.3E6
  r["Country"] := "Sweden"
  ta:Rows:Add(r)

  // var rows := from row as DataRow in ta:rows where row["Country"]:ToString() == "Sweden" select row
  var rows := from row in ta:rows:Cast<DataRow>() where row["Country"]:ToString() == "Sweden" select row
  ForEach row As DataRow in rows 
   ? i"The {row[""Name""]} is from {row[""Country""]}"
  Next

  rows := from row as DataRow in ta:Rows where row["Country"]:ToString() =="Italy" && Double.Parse(row["Price"]:ToString()) > 1300000 select row
  ForEach row As DataRow in rows 
   ? i"The {row[""Name""]} costs {row[""Price""]}"
  Next

