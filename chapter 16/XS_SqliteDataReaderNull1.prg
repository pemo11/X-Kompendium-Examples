// file: XS_SqliteDataReaderNull1.prg
// Querying potential DBNull values with the IsDBNull() method
// compile with xsc .\16_SqliteDataReaderNull1.prg /r:System.Data.Sqlite.dll

using System.Data
using System.Data.SQLite

Function Start() as Void
   Local conString := "Data Source=.\booklib.db3" As String
   Begin Using var cn := SqliteConnection{conString}
     cn:open()
     Local cmd := cn:CreateCommand() As SqliteCommand
     cmd:CommandText := "Select * From BookCopy"
     Local dr := cmd.ExecuteReader() As SqliteDataReader
     While dr:Read()
        ? i"{dr.GetString(dr.GetOrdinal(""Book""))} - Purchase date: {dr.GetDateTime(dr.GetOrdinal(""PurchaseDate""))}"
     End While
   End Using
