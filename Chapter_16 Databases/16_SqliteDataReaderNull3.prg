// File: 16_SqliteDataReaderNull3.prg
// Using an extension method for better handling null values like in DateTime fields
// compile with xsc .\16_SqliteDataReaderNull3.prg /r:System.Data.Sqlite.dll

using System.Data
using System.Data.SQLite

// The class is needed for the extension method
Class SQliteEx

    Static Method GetDateTimeEx(Self r As SqliteDataReader, Field As String) As DateTime?
       var ordNr:= r:GetOrdinal(Field)
       Return IIf(r:IsDBNull(ordNr), (DateTime?)Null, (DateTime?)r:GetDateTime(ordNr))

End Class

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
