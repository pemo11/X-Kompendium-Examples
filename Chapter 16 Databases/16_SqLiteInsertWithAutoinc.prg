// file: 16_SQLiteInsertWithAutoinc.prg
// Example for retrieving the value of an autoincrement field after an Insert
// compile with xsc ./16_SQLiteInsertWithAutoinc.prg /r:System.Data.Sqlite.dll

using System.Data.Sqlite

Function Start() As Void
   Local cnStr := "Data Source=.\BookLib.db3" As String
   Local sqlText := "Insert Into Book (AuthorId, title, pages) Values(@authorId,@title,@pages)" As String
   Begin Using var cn := SqliteConnection{cnStr}
      var cmd := cn:CreateCommand()
      cn:Open()
      cmd:CommandText := sqlText
      cmd:Parameters:Add(SqliteParameter{"authorId","pemo1"})
      cmd:Parameters:Add(SqliteParameter{"title", "The great book about nothing"})
      cmd:Parameters:Add(SqliteParameter{"pages", 1})
      var retVal := cmd:ExecuteNonQuery()
      ? retVal
      cmd:CommandText := "Select seq From sqlite_sequence Where name = 'Book'"
      var newId := cmd:ExecuteScalar()
      ? newId

   End Using
