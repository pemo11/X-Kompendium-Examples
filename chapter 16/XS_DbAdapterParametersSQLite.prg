// file: XS_DbAdapterParametersSQLite.prg
// Using parameters with a provider independent query

Using System.Configuration
Using System.Data
Using System.Data.Common

Function RegisterSQLiteProvider() As Void
   Local ds := (DataSet)ConfigurationManager.GetSection("system.data") As DataSet
   ds:Tables[0]:Rows:Add("SQLite Data Provider";
    , ".Net Framework Data Provider for SQLite";
    , "System.Data.SQLite";
    , "System.Data.SQLite.SQLiteFactory, System.Data.SQLite")

Function Start() As Void
   RegisterSQLiteProvider()
   var providerName := "System.Data.Sqlite"
   var conString := "Data Source=.\Booklib.db3" 
   Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
   Begin Using var con := factory:CreateConnection()
      con:ConnectionString := conString
      con:Open()
      var cmd := con.CreateCommand()
      cmd:CommandText :=" Select * From BookCopy Where Price > @Price"
      var paraPrice := factory:CreateParameter()
      paraPrice:ParameterName := "Price"
      paraPrice:Value := 20
      cmd:Parameters:Add(paraPrice)
      var dr := cmd.ExecuteReader()
      While dr:Read()
         ? dr:GetDouble(dr:GetOrdinal("Price"))
      End While
   End Using
