REM file: 03_DbQueryVB.vb
' Example for a database query with Visual Basic

Imports System.Data
Imports System.Data.Sqlite
Imports System.Collections.Generic

Friend Class Book
    Friend Property Title As String
End Class

Class Application

    Shared Sub Main()
      Console.WriteLine("*** This is Visual Basic ***")
      Dim books As List(Of Book) = new List(Of Book) 
      Dim cnStr As String = "Data Source=./BookLib.db3"
      Dim cn As SqliteConnection = Nothing
      Try
        cn = new SQliteConnection(cnStr)
        cn.open()
        Dim cmd = cn.CreateCommand()
        cmd.CommandText = "Select * From Book"
        Dim dr = cmd.ExecuteReader()
        While dr.Read()
           books.Add(new Book With {.Title = dr.GetString(dr.GetOrdinal("Title"))})
        End While
      Catch ex As SystemException
        Console.WriteLine("Error: " + ex.Message)
      Finally
        If cn Is Nothing
           cn.Close()
        End If
      End Try
      For Each book in Books
         Console.WriteLine(String.Format("Title: {0}", book.Title))  
      Next
      Return
    End Sub
End Class

