// File: MainForm.prg

Using System
Using System.Collections.Generic
Using System.Configuration
Using System.IO
Using System.Windows.Forms

Using System.Net

Using Newtonsoft.Json
Using Newtonsoft.Json.Linq

Begin Namespace WebserviceExample

    Public Partial Class MainForm Inherit Form
        Private infoMsg As String
    
        Public Constructor() Strict
            InitializeComponent()
            // Necessary to avoid a nasty error:
            // The request was aborted: Could not create SSL/TLS secure channel error
            ServicePointManager.SecurityProtocol := SecurityProtocolType.Tls12
            // not mandatory but just in case, who knows etc. ;)
            ServicePointManager.Expect100Continue := True
            Return
        End Constructor
        
        Private Method Convert2JArray(jsonText As String) As JArray
            Var customers := JsonConvert.DeserializeObject(jsonText)
            Var jObjects := ((JObject)customers)["results"]
            Return JArray.FromObject(jObjects)
            
        Private Method bnGetDataUntyped_Click(sender As Object, e As EventArgs) As Void Strict
            Var wsUrl := ConfigurationManager.AppSettings["NwCustomers"]
            infoMsg := i"Calling {wsUrl}"
            lbStatus:Items:Add(infoMsg)
            lbStatus:SelectedIndex := lbStatus:Items:Count - 1
            bnGetDataTyped:Enabled := False
            Local request := WebRequest.Create(wsUrl) As WebRequest
            request:Method := "GET"
            Local jsonText As String
            Local wsObjects As JArray
            
            Try
                Local response := request:GetResponse() As WebResponse
                // Response-Status: {response.StatusCode} 
                infoMsg := i"Content-Length: {response.ContentLength}"
                lbStatus:Items:Add(infoMsg)
                Begin Using Var responseStream := response:GetResponseStream()
                    Var reader := StreamReader{responseStream, System.Text.Encoding.Default}
                    jsonText := reader:ReadToEnd()
                    wsObjects := Convert2JArray(jsonText)
                    infoMsg := i"{wsObjects.Count} untyped objects retrieved"
                    lbStatus:Items:Add(infoMsg)
                    lbStatus:SelectedIndex := lbStatus:Items:Count - 1
                End Using
                dvData:DataSource := wsObjects
            Catch ex As SystemException
                infoMsg := i"!!! Error calling the webservice ({ex:Message})"
                lbStatus:Items:Add(infoMsg)
                lbStatus:SelectedIndex := lbStatus:Items:Count - 1
            Finally
                bnGetDataUntyped:Enabled := True
            End Try
            Return
        End Method
        
        Private Method bnGetDataTyped_Click(sender As Object, e As EventArgs) As Void Strict
            Nop
        End Method

    End Class 
    
End Namespace
