// file: XS_DataTableWithContraints.prg
// Example for creating an new DataTable with a Unique value constraint

using System.Data

Function Start() As Void
  var ta := DataTable{"Cars"}
  ta:Columns:Add(DataColumn{"Id", typeof(Int)})
  ta:Columns:Add(DataColumn{"Name", typeof(String)})
  ta:Columns:Add(DataColumn{"KeyId", typeof(String)})
  // Add a unique value constraint for the KeyId column
  ta:Constraints:Add(UniqueConstraint{<DataColumn>{ta:Columns["KeyId"]}})
  var r := ta:NewRow()
  r["Id"] := 1
  r["Name"] := "De Tomaso P72"
  r["KeyId"] := "K1"
  ta:Rows:Add(r)
  r := ta:NewRow()
  r["Id"] := 2
  r["Name"] := "La Ferrari"
  // This unique value violation
  r["KeyId"] := "K1"
  ta:Rows:Add(r)