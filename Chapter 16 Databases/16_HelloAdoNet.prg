// file: 16_HelloAdoNet.prg
// A first example for how to query data with Ado.Net

using System.Configuration
using System.Data
using System.Data.Sqlite

Function Start() As Void
   var conStr := ConfigurationManager.ConnectionStrings["mon"]:ConnectionString
   var sqlCmd := "Select * From Country Order by Name"
   var da := SqliteDataAdapter{sqlCmd, conStr}
   var ta := DataTable{"Countries"}
   var retVal := da:Fill(ta)
   ?i"{retVal} rows retrieved"
   ForEach row As DataRow in ta:Rows
    ?i"{row[""name""]} has a population of {row[""population""]}"
   Next