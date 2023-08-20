// file: 20_WriteJsonText1.prg
// A simple example for converting an List of objects into Json text with the newtonsoft assembly
// requires Newtonsoft.dll
// compile with xsc ./20_WriteJsonText1.prg /r:Newtonsoft.json.dll

using System.Collections.Generic
using System.IO
using Newtonsoft.Json
using Newtonsoft.Json.Linq

Class Book
   Property Author As String Auto
   Property Title As String Auto
   Property PubYear As Int Auto
End Class

Function Start() As Void
    var books := List<Book>{} {;
                  Book{}{Author:="Gordon Letwin",Title:="Inside OS/2",PubYear:=1988},;
                  Book{}{Author:="Helen Custer",Title:="Inside Windows NT",PubYear:=1992},;
                  Book{}{Author:="Abraham Schilbersatz",Title:="Silberschatz's Operating System Concepts",PubYear:=2000};
                 }
    
    // text is not indented which is usually what we want
    var jsonText := JsonConvert.SerializeObject(books)
    ? jsonText