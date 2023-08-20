// file: 20_ReadJsonText3.prg
// An example for reading a json file with the JsonSerizalizer (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./20_ReadJsonText3.prg /r:Newtonsoft.json.dll

using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq

Function Start() As Void
    var jsonPath := Path.Combine(Environment.CurrentDirectory, "movies.json")
    Begin Using var jFile := File.OpenText(jsonPath)
        var jSerializer := JsonSerializer{}
        Local movies := (JArray)jSerializer.Deserialize(jFile, Null) As JArray
        For Local i := 0 UpTo movies:Count - 1
           ? i"Object Nr. {i+1}"
           ? movies[i]
        Next
    End Using
    
    
    