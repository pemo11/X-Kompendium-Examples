// file: XS_ReadJsonText2.prg
// Converting a deserialized objects into a JArray (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./XS_ReadJsonText2.prg /r:Newtonsoft.json.dll

using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq // for JArray

Function Start() As Void
    var jsonPath := Path.Combine(Environment.CurrentDirectory, "movies.json")
    // Read a json file with an object array 
    var jsonText := File.ReadAllText(jsonPath)
    // returns just a single Newtonsoft.Json.Linq.JObject
    var jObjects := JsonConvert.DeserializeObject(jsonText)
    // Make this an JArray
    var aMovies := JArray.FromObject(jObjects)
    ?aMovies:Count
    // enumerate each object in the array
    ForEach var movie in aMovies
      ? "*** Movie details ***"
      ? movie
    Next

    