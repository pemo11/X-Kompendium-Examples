// file: 15_AsyncTranslate.prg
// Using the Azure Translation API for demonstration purpose
// Important: Only works with your own key (you can get it at azure.com for free)
// Important: Requires Newtonsoft assemly because of lack of Json support in .Net Framework 4.8
// xsc .\15_AsyncTranslate.prg /r:Newtonsoft.json.dll /r:System.Net.Http.dll

using System.IO
using System.Text
using System.Net
using System.Net.Http
using Newtonsoft.Json

Function GetApiKey() As String
   var pathKey := Path.Combine(Environment.CurrentDirectory, "azurekey.txt")
   var apiKey := ""
   If File.Exists(pathKey)
      apiKey := File.ReadAllText(pathKey)
   EndIf
   Return apiKey

Async Function Translate(TranslateText As String) As Void
   var apiKey := GetApiKey()
   If apiKey == ""
      ? "azurekey.txt with your Azure Api key not found!"
      Environment.Exit(-1)
   EndIf
   var endpointUri := "https://api.cognitive.microsofttranslator.com/"
   
   // translate from Englisch to German
   var route := "/translate?api-version=3.0&from=en&to=sw&to=de"
   // Location can be important too
   var location := "germanywestcentral"

   Local body := <object>{Class {Text := TranslateText}} As Object[]
   var requestBody := JsonConvert.SerializeObject(body)

   ServicePointManager.SecurityProtocol := SecurityProtocolType.Tls12

   Begin Using var client := HttpClient{}
      Begin Using var request := HttpRequestMessage{}
         request:Method := HttpMethod.Post
         request:RequestUri := Uri{endpointUri + route}
         request:Content := StringContent{requestBody, Encoding.UTF8, "application/json"}
         request:Headers:Add("Ocp-Apim-Subscription-Key", apiKey)
 	 request:Headers:Add("Ocp-Apim-Subscription-Region", location);

         // Send the request and get response
         Local response := await client:SendAsync(request):ConfigureAwait(false) As HttpResponseMessage
         // Read response as a string
         Local result := await Response:Content:ReadAsStringAsync() As String
         Console.WriteLine(result)
      End Using
    End Using

Function Start() As Void
   var text2Translate := "10 reasons why X# will be most popular language in the world at the latest by 2030"
   Translate(text2Translate )
   Console.Readline()