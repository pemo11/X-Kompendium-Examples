// file: XS_SqliteDataReader.prg
// Getting data from a SQLite database with a SqliteDataReader
// compile with xsc .\16_SqliteDataReader.prg /r:System.Data.Sqlite.dll

using System.Data
using System.Data.SQLite

Function Start() as Void
   Local conString := "Data Source=.\mondial.db" As String
   Begin Using var cn := SqliteConnection{conString}
     cn:open()
     Local cmd := cn:CreateCommand() As SqliteCommand
     cmd:CommandText := "Select * From Country"
     Local dr := cmd.ExecuteReader() As SqliteDataReader
     While dr:Read()
        ? i"{dr.GetString(dr.GetOrdinal(""Name""))} - Population: {dr.GetDecimal(dr.GetOrdinal(""Population""))}"
     End While
   End Using
