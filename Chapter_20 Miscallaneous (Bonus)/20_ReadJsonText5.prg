// file: 20_ReadJsonText5.prg
// A simple example for reading a simple json file as typed objects (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./20_ReadJsonText5.prg /r:Newtonsoft.json.dll

using System.Collections.Generic
using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq

Class Movie
   Property Title As String Auto
   Property Director As String Auto
   Property ReleaseYear As Int Auto
End Class

Function Start() As Void
    var jsonPath := Path.Combine(Environment.CurrentDirectory, "movies.json")
    var jsonText := File.ReadAllText(jsonPath)
    var oMovies := JsonConvert.DeserializeObject<List<Movie>>(jsonText)
    ForEach var oMovie in oMovies
       ? i"{oMovie.Title} by {oMovie.Director.Replace("","","" and"")} ({oMovie.ReleaseYear})"
    Next
    
    
    