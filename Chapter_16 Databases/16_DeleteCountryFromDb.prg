// file: 16_DeleteCountryFromDb.prg
// Example for deletin a row from the Country table of the Mondial database
// compile with xsc .\16_DeleteCountryFromDb.prg /r:System.data.sqlite.dll

using System.Data
using System.Data.Sqlite

function Start() As Void
    If Environment:GetCommandLineArgs():Length != 2
       ? "Call 16_DeleteCountryFromDb with country code as the first and only argument!"
       Environment.Exit(-1)
    EndIf
    var code := Environment:GetCommandLineArgs()[2]
    var cnStr := "Data Source=.\mondial.db"
    begin using var cn := SqliteConnection{cnStr}
      cn:open()
      var cmd := cn:CreateCommand()
      cmd:commandText := "Delete From Country Where Code=@code"
      cmd:Parameters:AddWithValue("code", code)
      // execute the query
      var retVal := cmd.executeNonQuery()
      ? retVal
      
    end using
