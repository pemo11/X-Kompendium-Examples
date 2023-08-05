// file: 16_SqlInsertWithStringBuilder.prg
// Example for using a stringbuilder for concatenating a SQL update command
// xsc .\16_SqlInsertWithStringBuilder /r:System.Data.Sqlclient.dll

using System.Text
using System.Data.Sqlite

Function Start() As Void
   var cnStr := "Data Source=.\mondial.db"
 
   /*
   var sb := StringBuilder{}
   sb:Append("Insert Into Airport(IATACode,Name,Country,City,Latitude,Longitude,Elevation) ")
   sb:Append("Values('EXY','Flugplatz Römerstraße','D','Esslingen',")
   sb:Append("48.7433425,")
   sb:Append("9.3201122,")
   sb:Append("241)")
   */

   var sb := StringBuilder{}
   sb:Append("Insert Into Country (Name,Code,Capital,Area,Population) ")
   sb:Append("Values('Dotnet',")
   sb:Append("'DOT',")
   sb:Append("'GarbageCity',")
   sb:Append("0,")
   sb:Append("1)")
   
   Begin Using var cn := SqliteConnection{cnStr}
     cn:Open()
     var cmd := cn:CreateCommand()
     cmd:CommandText := sb:ToString()
     var result := cmd:ExecuteNonQuery()
     ? result
   End Using
   