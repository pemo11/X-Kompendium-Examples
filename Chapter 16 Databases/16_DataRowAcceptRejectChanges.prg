// file: 16_DataRowAcceptRejectChanges.prg
// Example for a complete Update() method call of a Sqlite Data Adapter
// use xsc ./16_DataRowAcceptRejectChanges.prg /r:System.Data.Sqlite

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
   ? "*** Rice prices by 10% ***"
   ForEach row As DataRow in ta:Rows
     // Change the price by 10%
     row["price"] := (Double)row["price"] * 1.1
     ? i"original := {row[""price"", DataRowVersion.Original]} current :={row[""price"", DataRowVersion.Current]}"
   Next
   ? "*** After AcceptChanges ***"
   ta:AcceptChanges()
   ForEach row As DataRow in ta:Rows
     ? i"original := {row[""price"", DataRowVersion.Original]} current :={row[""price"", DataRowVersion.Current]}"
   Next
   ? "*** Rice prices by 10% ***"
   ForEach row As DataRow in ta:Rows
     // Change the price by 10%
     row["price"] := (Double)row["price"] * 1.1
    Next
   ? "*** After RejectChanges ***"
   ta:RejectChanges()
   ForEach row As DataRow in ta:Rows
     ? i"original := {row[""price"", DataRowVersion.Original]} current :={row[""price"", DataRowVersion.Current]}"
   Next
