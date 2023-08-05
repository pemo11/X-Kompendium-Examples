// file: 16_SqliteDataTableUpdate.prg
// Example for a complete Update() method call of a Sqlite Data Adapter
// use xsc ./16_SqliteDataTableUpdate.prg /r:System.Data.Sqlite

using System.Data
using System.Data.Sqlite
using System.Linq

Function Start() As Void
   var conStr := "Data Source=.\BookLib.db3"
   var sqlCmd := "Select * From BookCopy"
   var da := SqliteDataAdapter{sqlCmd, conStr}
   var ta := DataTable{"Books"}
   var retVal := da:Fill(ta)
   ?i"{retVal} rows retrieved"
   // Prepare the SqliteCommandBuilder
   var sqlCb := SqliteCommandBuilder{da}
   // print out the old prices
   ? "*** Current prices ***"
   For Local i := 0 UpTo ta:Rows:Count - 1
     ?i"current price={ta.Rows[i][""price""]}"
   Next
   // Increase the prices of every second book by +25%
   ForEach row As DataRow in ta:Rows
     var priceVal := Double.Parse(row["price"]:ToString())
     row["price"] := priceVal * 1.25
     ? i"original = {row[""price"", DataRowVersion.Original]} current:={row[""price"", DataRowVersion.Current]}"
  Next
   // print out the new prices
   ? "*** Updated prices ***"
   ForEach row As DataRow in ta:Rows
     ?i"current price={row[""price""]}"
   Next

   // get the number of modified rows before AcceptChanges() sets them back to Unchanged
   var modifiedCount := (from r as DataRow in ta:Rows Where r:RowState == DataRowState.Modified Select r):Count()
   
   // Accept all changes in the DataTable
   ta:AcceptChanges()

   // Now its a simple a call of the Update() method
   // Because of AcceptChanges() every row is in RowState = Unchanged to Update() returns 0
   da:Update(ta)

   ? i"{modifiedCount} rows updated"