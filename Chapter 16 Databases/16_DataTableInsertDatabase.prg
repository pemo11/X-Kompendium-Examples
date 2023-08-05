// file: 16_DataTableInsertDatabase.prg
// Example for inserting a new DataTable into an existing SQLite database
// compile with xsc .\16_DataTableInsertDatabase.prg /r:System.Data.SQLite.dll

using System.Data
using System.Data.SQLite

Function Start() As Void
    var ta := DataTable{"Cars"}
    ta:Columns:Add(DataColumn{"Id",typeof(Int)})
    ta:Columns:Add(DataColumn{"Type",typeof(String)})
    ta:Columns:Add(DataColumn{"Color",typeof(String)})
    ta:Columns:Add(DataColumn{"Year",typeof(Int)})
    ta:Columns:Add(DataColumn{"Price",typeof(Double)})
    // Add primary key for the DataAdapter
    ta:PrimaryKey := <DataColumn>{ta:Columns["Id"]}
    // Add a few rows
    var row := ta:NewRow()
    row["Id"] := 1
    row["Type"] := "De Tomaso P72"
    row["Color"] := "Red"
    row["Year"] := 2019
    row["Price"] := 1300000
    ta:Rows:Add(row)

    row := ta:NewRow()
    row["Id"] := 2
    row["Type"] := "La Ferrari"
    row["Color"] := "Yellow"
    row["Year"] := 2013
    row["Price"] := 1400000
    ta:Rows:Add(row)

    row := ta:NewRow()
    row["Id"] := 3
    row["Type"] := "Aston Martin Vulcan"
    row["Color"] := "Magenta"
    row["Year"] := 2014
    row["Price"] := 2300000
    ta:Rows:Add(row)

    // Create a DataAdapter
    var cnStr := "Data Source=.\CarsDb.db3"
    var sqlText := "Select * From Cars"
    var adapter := SQLiteDataAdapter{sqlText,cnStr}

    // Create a CommandBuilder
    var cb := SQLiteCommandBuilder{adapter}

    var result := adapter:Update(ta)
    ? i"{result} rows stored in the database"

