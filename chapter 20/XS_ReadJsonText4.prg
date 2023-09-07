// file: XS_ReadJsonText4.prg
// Converting a single deserialized objects into a JArray (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./XS_ReadJsonText4.prg /r:Newtonsoft.json.dll

using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq // for JArray

Function Start() As Void
    var jsonPath := Path.Combine(Environment.CurrentDirectory, "movies2.json")
    // read a json text with a single movies object that contains an array
    var jsonText := File.ReadAllText(jsonPath)
    // returns just a single Newtonsoft.Json.Linq.JObject
    var movieObjects := JsonConvert.DeserializeObject(jsonText)
    // get the movies-entry from the JObject
    var jObjects := ((JObject)movieObjects)["Movies"]
    // Make the movies-Entry an JArray
    var aMovies := JArray.FromObject(jObjects)
    ?aMovies:Count
    ForEach var movie in aMovies
      ? "*** Movie details ***"
      ? movie
    Next

    