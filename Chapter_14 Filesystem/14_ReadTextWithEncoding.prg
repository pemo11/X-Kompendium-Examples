// file: 14_ReadTextWithEncoding.prg
// Example for reading a text file with enconding

using System.IO
using System.Text

Function Start() As Void
  var filePath := Path.Combine(Environment.CurrentDirectory, "umlaute.txt")
  If File.Exists(filePath)
    // No umlauts with this
    // var lines := File.ReadAllLines(filePath)
    var lines := File.ReadAllLines(filePath, Encoding.Default)
    ForEach var line in lines
      ? line
    Next
  EndIf
