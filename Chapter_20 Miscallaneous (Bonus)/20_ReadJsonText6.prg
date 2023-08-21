// file: 20_ReadJsonText6.prg
// Converting Json Text from a Webservice call into typed objects (Newtonsoft)
// requires Newtonsoft.dll
// compile with xsc ./20_ReadJsonText6.prg /r:Newtonsoft.json.dll

using System.Collections.Generic
using System.IO
Using System.Net

using Newtonsoft.Json
using Newtonsoft.Json.Linq // for JArray

Class Customer
    Property Id As String Auto
    Property CompanyName As String Auto
    Property Address As String Auto
    Property City As String Auto
    Property Country As String Auto
End Class

Function Start() As Void
    ServicePointManager.SecurityProtocol := SecurityProtocolType.Tls12
    var wsUrl := "https://northwind.netcore.io/customers.json"
    var request :=  WebRequest.Create(wsUrl)
    var response := request:GetResponse()
    Begin Using Var responseStream := response:GetResponseStream()
      Var reader := StreamReader{responseStream, System.Text.Encoding.Utf8}
      var jsonText := reader:ReadToEnd()
      var customerObjects := JObject.Parse(jsonText)
      // First we get only JObjects
      ? "*** First untyped objects ***"
      ForEach var customer in customerObjects["results"]
         ?i"Id: {customer[""id""]} Company: {customer[""companyName""]}"
      Next
      // now the objects are converted to true Customer objects
      var customerList := List<Customer>{}
      ForEach var customer in customerObjects["results"]
         customerList:Add(customer:ToObject<Customer>())
      Next
      ? "*** Now typed objects ***"
      ForEach var customer in customerList
         ?i"Id: {customer.Id} Company: {customer.CompanyName}"
      Next

    End Using
    