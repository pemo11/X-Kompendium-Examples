// Updating a SQLite database with a DataAdapter and a CommandBuilder

using System.Data
using System.Data.Sqlite

function Start() As void
    var dbPath := "BookLib.db3"
    var cnStr := i"Data Source={dbPath}"
    var cmdText := "Select * From BookCopy"
    var da := SqliteDataAdapter{cmdText, cnStr}
    var ta := DataTable{}
    // get the data
    da:fill(ta)
    // build the command builder
    var cb := SqliteCommandBuilder{da}
    // Change the price of a book
    var curPrice := (Double)ta:Rows[0]["price"]
    ? i"the current price: {curPrice}"
    // Change the price
    var updatedPrice := curPrice * 1.1
    // Update the price
    ta:rows[0]["price"] := updatedPrice
    // Get the book id for a later query
    var bookId := ta:rows[0]["id"]
    // Now the the DataAdapter do the magic
    var changeCount := da:Update(ta)
    ? i"{changeCount} rows changed"
    // Now retrieve the new price with a DataReader and its InvokeScalar() method
    var newPrice := 0.0
    begin using var cn := SQliteConnection{cnStr}
       cn:open()
       var cmd := cn:CreateCommand()
       cmd:CommandText := i"Select Price From BookCopy Where Id={bookId}"
       newPrice := (Double)cmd:ExecuteScalar() 
    end using
    
    ? i"the new price: {newPrice}"
