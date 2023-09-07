// file: XS_DBConnectionCreate_SQLiteConfig.prg
// Opening a provider independent connection to a SQLite database
// compile with xsc .\16_DBConnectionCreate_SQLite.prg 

using System.Configuration
using System.Data
using System.Data.Common

Function Start() as Void
   // Does not work if no entry in either app.config or machine.config
   var providerName := "System.Data.Sqlite"
   var conString := "Data Source=.\Booklib.db3" 
   Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
   Begin Using var con := factory:CreateConnection()
      con:ConnectionString := conString
      con:open()
      ? "*** Connection openend ***"
   End Using
   ? "*** Connection was closed ***"