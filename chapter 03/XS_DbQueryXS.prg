// file: XS_DbQueryXS.prg
// A simple database query with X# and a datareader
// Compile with xsc /r:runtimeLibs/SQLite x64/System.Data.SQLite.dll

Using System.Data
Using System.Data.Sqlite
Using System.Collections.Generic

Internal Class Book
    Internal Property Title As String Auto
End Class

Function Start() As Void
    Console.WriteLine("*** This is X# ***")
    Var books := List<Book>{}
    Var cnStr := "Data Source=./BookLib.db3"
    Local cn := Null As SqliteConnection
    Try
      cn := SQliteConnection{cnStr}
      cn:open()
      var cmd := cn:CreateCommand()
      cmd:CommandText := "Select * From Book"
      var dr := cmd:ExecuteReader()
      While dr:Read()
         books:Add(Book{}{Title := dr:GetString(dr:GetOrdinal("Title"))})
      End While
    Catch ex As SystemException
      Console.WriteLine(i"Error: {ex:Message}")
    Finally
      If cn != Null
         cn:Close()
      EndIf
    End Try
    ForEach var book in Books
       Console.WriteLine(String.Format("Title: {0}", book:Title))  
    Next
    Return
