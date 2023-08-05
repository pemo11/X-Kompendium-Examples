// file: 03_DbQuery.prg

Using System.Data
Using System.Data.SQLite
Using System.Collections.Generic

Internal Class Book
    Internal Property Title As String Auto
End Class

Function Start() As Void
    Console.WriteLine("*** This is X# ***")
    Var books := List<Book>{}
    Var cnStr := "Data Source=./BookLib.db3"
    Local cn := Null As SQLiteConnection
    Try
      cn := SQLiteConnection{cnStr}
      cn:Open()
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
    ForEach var book in books
       Console.WriteLine(String.Format("Title: {0}", book:Title))  
    Next
    Console.ReadLine()
    Return
