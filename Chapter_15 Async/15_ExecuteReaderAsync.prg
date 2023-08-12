// file: 15_ExecuteReaderAsync.prg
// An example for an asynchronous database query

Using System.Collections.Generic
Using System.Data
Using System.Data.Sqlite
Using System.Threading.Tasks

Async Function InvokeQuery(sql As String, FieldName As String) As Task<List<String>>
   var cnStr := "Data Source=mondial.db"
   var results := List<String>{}
   Begin using var cn := SqliteConnection{cnStr}
     // Don't forget to open the connection...
     cn:Open()
     var cmd := cn:CreateCommand()
     cmd:CommandText := sql
     // As Task<SqliteDataReader> 
     Begin Using var reader := await cmd:ExecuteReaderAsync()
         While await reader:ReadAsync()
           results:Add(reader[fieldName]:ToString())
         End While
     End Using
   End Using
   
   return results

Async Function InvokeQueryAsync() As Void
  var sqlCmd := "Select * From Country"
  var field := "name"
  var results := await InvokeQuery(sqlCmd, field)
  ? i"{results.Count} Countries queried..."
  
Function Start() As Void
   InvokeQueryAsync()