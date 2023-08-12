// file: 16_QueryDataTableColumnNamesLinq.prg
// A simple LINQ query for getting the column names of a DataTable

using System.Data
using System.LINQ

Function Start() as Void
  var ta := DataTable{}
  ta:Columns:Add(DataColumn{"A2",typeof(String)})
  ta:Columns:Add(DataColumn{"A3",typeof(String)})
  ta:Columns:Add(DataColumn{"B1",typeof(String)})
  ta:Columns:Add(DataColumn{"A1",typeof(String)})
  ta:Columns:Add(DataColumn{"A4",typeof(String)})
  var aColumns := From d As DataColumn In ta:Columns Where d:ColumnName:StartsWith("A") Orderby d:ColumnName Descending Select d
  ForEach var col In aColumns
    ? col:ColumnName
  Next