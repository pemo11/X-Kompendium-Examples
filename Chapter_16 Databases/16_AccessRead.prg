// file: 16_AccessRead.prg
// example for reading a MS Access mdb database file
// if only the 32 bit ole db provider is installed use
// compile xsc .\16_AccessRead.prg -platform:x86 and ignore warning

using System.Data
using System.Data.OleDb

Function Start() As Void
   var mdbPath := "SampleData.mdb"
   var cnStr := i"Provider=Microsoft.Jet.OLEDB.4.0;Data Source={mdbPath};Jet OLEDB:Engine Type=5"
   try
      var sql := "Select * From Messwerte"
      var da := OleDbDataAdapter{sql, cnStr}
      var ta := DataTable{}
      ? da:fill(ta)
      ? i"{ta.Rows.Count} rows in the table"
   catch ex As OleDbException
      ? i"Error: {ex:Message}"
   end try
