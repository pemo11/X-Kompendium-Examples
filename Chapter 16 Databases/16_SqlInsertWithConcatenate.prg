// file: 16_SqlInsertWithConcatenate.prg.prg
// Example for concatenating a SQL update command
// xsc .\16_SqlInsertWithConcatenate.prg /r:System.Data.Sqlclient.dll

using System.Data.Sqlite

Function Start() As Void
   var cnStr := "Data Source=.\mondial.db"

   var sqlText := "Insert Into Airport (IATACode,Name,Country,City,Latitude,Longitude,Elevation) "
   sqlText += "Values('EXY','Flugplatz Römerstraße','D','Esslingen',"
   sqlText += "48.7433425,"
   sqlText += "9.3201122,"
   sqlText += "241)"
   
   Begin Using var cn := SqliteConnection{cnStr}
     cn:Open()
     var cmd := cn:CreateCommand()
     cmd:CommandText := sqlText
     var result := cmd:ExecuteNonQuery()
     ? result
   End Using
   