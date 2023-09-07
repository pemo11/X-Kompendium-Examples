// file: XS_DataTableAddPrimaryKey.prg
// Adding the PrimaryKey to a filled DataTable
// Compile with xsc .\16_DataTableAddPrimaryKey.prg /r:System.Data.Sqlite.dll

Using System.Data
Using System.Data.Sqlite

Function Start() As Void
  var conStr := "Data Source=.\BookLib.db3"
  var sqlText := "Select * From Book"
  var ta := DataTable{"Books"}
  var da := SqliteDataAdapter{sqlText, conStr}
  da:MissingSchemaAction := MissingSchemaAction.AddWithKey
  da:fill(ta)
  If ta:PrimaryKey:Length > 0
    ?i"Primary Key:= {ta.PrimaryKey[1]}"
  EndIf
