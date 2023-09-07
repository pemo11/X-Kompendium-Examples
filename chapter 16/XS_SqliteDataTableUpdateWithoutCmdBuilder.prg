// file: XS_SqliteDataTableUpdateWithoutCmdBuilder.prg
// Example for updating a database table without a DataAdapter
// compile with xsc ./XS_SqliteDataTableUpdateWithoutCmdBuilder.prg /r:runtimeLibaries/System.Data.Sqlite.dll

using System.Data
using System.Data.Sqlite

Function Start() As Void
    var cnStr := i"Data Source=data\BookLib.db3"
    var sqlText := "Select * From BookCopy"
    var da := SqliteDataAdapter{sqlText, cnStr}
    var ta := DataTable{"Books"}
    da:Fill(ta)
    ?i"{ta.Rows.Count} rows retrieved"
    // Print out the current prices
    Console.WriteLine(String{c"=", 80})
    ForEach row As DataRow in ta:Rows
        Console.WriteLine(i"Book ID={row[""Id""]} Book Price={row[""Price""]}")
    Next
    Console.WriteLine(String{c"=", 80})
    Console.WriteLine("Change the price for each book in % (eg. -10 or 25)?")
    var priceChange := Double.Parse(Console.Readline())
    // change the price for each book
    ForEach row As DataRow in ta:Rows
       row["Price"] := Double.Parse(row["Price"]:ToString()) * (1 + priceChange / 100)
    Next
    // Now update each row in the table (this could have been done in the loop above too)
    ForEach row As DataRow in ta:Rows
       If row:RowState == DataRowState.Modified
          var bookPrice := Math.Round(Double.Parse(row["Price"]:ToString()),2):ToString():Replace(",",".")
          sqlText := i"Update BookCopy Set Price={bookPrice} Where "
          // Now build the where clause
          ForEach col As DataColumn in ta:Columns
             // For price column include the original version
             If col:ColumnName == "price"
                 sqlText += i"{col.ColumnName}={row[col,DataRowVersion.Original].ToString().Replace("","",""."")} and "
             Else
               If col:DataType == typeof(String) || col:DataType == typeof(DateTime)
                 sqlText += i"{col.ColumnName}='{row[col,DataRowVersion.Current]}' and "
               Else
                 sqlText += i"{col.ColumnName}={row[col,DataRowVersion.Current]} and "
               EndIf
             EndIf
          Next
          // Remove last and
          sqlText := sqlText:Substring(0, sqlText:Length - 4)
          ? sqlText
          // Execute the query - create a new command object (instead of using one of the DataAdapters four commands
          // But open the connection first
          da:selectCommand:Connection:Open()
          Begin Using var cmd := da:selectCommand:Connection:CreateCommand()
            cmd:CommandText := sqlText
            var retVal := cmd:ExecuteNonQuery()
            If retVal == 1
              Console.WriteLine(i"*** The row was updated")
            Else
              Console.WriteLine("!!! The row could not updated - may be the database had been changed?")
            EndIf
          End Using
          da:selectCommand:Connection:Close()
       EndIf
    Next
    // Now get the new prices
    sqlText := "Select * From BookCopy"
    da := SqliteDataAdapter{sqlText, cnStr}
    ta := DataTable{"Books"}
    da:Fill(ta)
    Console.WriteLine(String{c"=", 80})
    ForEach row As DataRow in ta:Rows
       Console.WriteLine(i"Book ID={row[""Id""]} Book Price={row[""Price""]}")
    Next
    Console.WriteLine(String{c"=", 80})
    
 
    

