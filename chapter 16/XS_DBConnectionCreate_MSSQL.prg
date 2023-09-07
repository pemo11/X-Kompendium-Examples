// file: XS_DBConnectionCreate_MSSQL.prg
// Opening a provider independent connection to MS SQL Server database

using System.Data
using System.Data.Common

Function Start() as Void
   Local providerName := "System.Data.SqlClient" As String
   Local conString := "Data Source=.\SQLExpress19;Initial Catalog=ef1;Integrated Security=SSPI" As String
   Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
   Begin Using var con := factory:CreateConnection()
      con:ConnectionString := conString
      con:open()
      ? "*** Connection openend ***"
   End Using
   ? "*** Connection was closed ***"