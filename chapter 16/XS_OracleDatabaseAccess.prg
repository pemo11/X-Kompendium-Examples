// file: 16_OracleDatabaseAccess.prg
// A simple example for accessing an Oracle "database"
// Compile with xsc 16_OracleDatabaseAccess.prg /r:Oracle.ManagedDataAccess.dll /r:System.Configuration.dll

Using System.Configuration
using System.Data
using Oracle.ManagedDataAccess.Client

Function Start() As Void
   var DbName := ConfigurationManager.AppSettings["DbName"]
   var Pw := ConfigurationManager.AppSettings["Pw"]
   var Hostname := ConfigurationManager.AppSettings["Hostname"]
   var Servicename := ConfigurationManager.AppSettings["Servicename"]
   var conStr := i"Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST={Hostname})(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME={Servicename})));User Id={DbName};Password={Pw}"
   var sqlCmd := "Select * From Adress"
   var da := OracleDataAdapter{sqlCmd, conStr}
   var ta := DataTable{"Adress"}
   var retVal := da:Fill(ta)
   ?i"{retVal} rows retrieved"
   ForEach row As DataRow in ta:Rows
    ?i"AdrNr: {row[""adrNr""]} Nachname: {row[""nachname""]}"
   Next