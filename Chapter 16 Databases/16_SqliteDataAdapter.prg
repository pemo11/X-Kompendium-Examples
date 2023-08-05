// file: 16_SqliteDataAdapter.prg
// Getting data from a SQLite database with a SqliteDataAdapter and a DataTable
// compile with xsc .\16_SqliteDataAdapter.prg /r:System.Data.Sqlite.dll

using System.Data
using System.Data.Sqlite

Function Start() as Void
   Local conString := "Data Source=.\mondial.db" As String
   Local sqlText := "Select * From Country" As String
   Local da := SqliteDataAdapter{sqlText, conString} As SqliteDataAdapter
   Local ta := DataTable{} As DataTable
   var rowCount := da:Fill(ta)
   ?i"{rowCount} rows loaded"
   // Primary key is not available
   ?i"Primary key: {ta:PrimaryKey[0]}"
   ForEach row As DataRow in ta:Rows
      // ? row["Population"]:GetType():Name
      ? i"{row[""Name""]} - Population: {row[""Population""]}"
   Next