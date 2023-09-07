// file: XS_DotNetArraySearchWithWhere.prg
// Searching a .Net array with LINQ

using System.Linq
using System.Text.RegularExpressions

Function Start() As Void
    var cities := <String>{"New York","Rio","Tokyo"}
    var searchTerm := "Tokio"
    var result := cities:Where({c => regex.IsMatch(c, searchTerm)}):ToList()
    ? result:Count
    searchTerm := "Tokyo"
    result := cities:Where({c => regex.IsMatch(c, searchTerm)}):ToList()
    ? result:Count
