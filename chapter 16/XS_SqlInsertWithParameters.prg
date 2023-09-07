// file: XS_SqlInsertWithParameters.prg
// Example for a parameterized SQL query
// compile with xsc .\16_SqlnsertWithParameters.prg /r:System.data.sqlite.dll

using System.Data
using System.Data.Sqlite

Function Start() As Void
    var cnStr := "Data Source=.\mondial.db"
    begin using var cn := SqliteConnection{cnStr}
      cn:open()
      var cmd := cn:CreateCommand()
      // cmd:commandText := "Insert Into Country (Name,Code,Capital,Area,Population) Values (?,?,?,?,?)"
      cmd:commandText := "Insert Into Country (Name,Code,Capital,Area,Population) Values (@name,@code,@capital,@area,@population)"
      // add all the parameters with their values (no @ before the name)      
      cmd:Parameters:AddWithValue("name", "Funnyland")
      cmd:Parameters:AddWithValue("code", "fun")
      cmd:Parameters:AddWithValue("capital", "USA")
      cmd:Parameters:AddWithValue("area", 0)
      cmd:Parameters:AddWithValue("population", 123)
      // execute the query
      var retVal := cmd.executeNonQuery()
      ? retVal
      
    end using
