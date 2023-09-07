// file: XS_ReadJsonText1.prg
// A simple example for reading a simple json file with JsonConvert (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./XS_ReadJsonText1.prg /r:Newtonsoft.json.dll

using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq // for JArray

Function Start() As Void
    var jsonPath := Path.Combine(Environment.CurrentDirectory, "movies.json")
    // read an json file with an object array
    var jsonText := File.ReadAllText(jsonPath)
    // returns just a single Newtonsoft.Json.Linq.JObject
    var movieObjects := JsonConvert.DeserializeObject(jsonText)
    // printing out the deserialized objects as text
    ? movieObjects
    