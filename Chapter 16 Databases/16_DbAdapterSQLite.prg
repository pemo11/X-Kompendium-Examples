// file: 16_DbAdapterSQLite.prg
// Creating a provider independent DataAdapter

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
   var ta := DataTable{"books"}
   var cn := factory:CreateConnection()
   cn:ConnectionString := conString
   var cmd := cn:CreateCommand()
   cmd:CommandText :=" Select * From Book"
   var da := factory:CreateDataAdapter()
   da:SelectCommand := cmd
   da:Fill(ta)
   ForEach row As DataRow in ta:Rows
     ?row["Title"]
   Next
