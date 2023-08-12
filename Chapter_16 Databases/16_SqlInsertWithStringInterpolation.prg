// file: 16_SqlInsertWithStringInterpolation.prg
// Example creating a SQL update command with string interpolation
// xsc .\16_SqlInsertWithStringInterpolation.prg /r:System.Data.Sqlclient.dll

using System.Data.Sqlite

Function Start() As Void
   var cnStr := "Data Source=.\mondial.db"

   var country := "JavaLand"
   var capital := "Bean City"
   var code := "Java"
   var area := 0
   var population := 1
   var sqlText := "Insert Into Country (Name,Code,Capital,Area,Population) "
   sqlText += i"Values('{country}','{code}','{capital}',{area},{population})"
   ? sqlText

   Begin Using var cn := SqliteConnection{cnStr}
     cn:Open()
     var cmd := cn:CreateCommand()
     cmd:CommandText := sqlText
     var result := cmd:ExecuteNonQuery()
     ? result
   End Using
   