// File: 16_SqliteDataReaderNull2.prg
// Querying potential DBNull values with the IsDBNull() method
// compile with xsc .\16_SqliteDataReaderNull2.prg /r:System.Data.Sqlite.dll

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
        var dateValue := IIf(!dr:IsDBNull(dr:GetOrdinal("PurchaseDate")), (DateTime?)dr:GetDateTime(dr:GetOrdinal("PurchaseDate")), (DateTime?)Null)
        ? i"{dr.GetString(dr.GetOrdinal(""Book""))} - Purchase date: {dateValue}"
     End While
   End Using
