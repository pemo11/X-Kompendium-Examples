// file: 16_DataTableLoadXml.prg
// Example for loading XML into a DataTable

Using System.Data
Using System.IO

Function Start() As Void
  var xmlPath := Path.Combine(Environment.CurrentDirectory, "ExpensiveCars.xml")
  var ta := DataTable{}
  // Does not work without an XML schema
  Begin Using  var stream := FileStream{xmlPath, FileMode.Open}
     ta:ReadXml(stream)
  End Using
  ForEach row As DataRow in ta:Rows
    var carPrice := Double.Parse(row["Price"]:ToString()):ToString("C")
    ?i"A car of the type {row[""Name""]} costs as little as {carPrice}"
  Next

