Using System
Using System.Diagnostics
Using System.IO
Using System.Windows.Forms

Begin Namespace DebugWithListeners

    Public Partial Class MainForm ;
        Inherit Form
        Private logPath As String
        Private logFileName As String

        Public Constructor() Strict // Form1
            InitializeComponent()
            InitLogging()
            Return
        End Constructor
        
        Internal Method GetLastLine(Path As String, LineCount := 1 As Int) As String
            Local lines As String[]
            Local lastLines := "" As String
            Try
                Begin Using Var fs := FileStream{Path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite}
                    Begin Using Var sr := StreamReader{fs}
                        lines := sr:ReadToEnd():Split(c"\n")
                    End Using
                End Using
                For Local i := LineCount - 1 Downto 0
                    lastLines += lines[lines:Length - i] + e"\n"
                Next
                // Remove last \n
                If lastLines:Length > 0
                    lastLines := Iif(lastLines:Substring(lastLines:Length-1,1) == e"\n", lastLines:Substring(0, lastLines:Length - 1), lastLines)
                Endif
            Catch ex As FileNotFoundException
                Var infoMessage := i"!!! GetLastLine->FileNotFoundException: {ex:Message} "
                Debug.WriteLine(infoMessage)
            Catch ex As SystemException
                Var infoMessage := i"!!! GetLastLine->SystemException {ex:Message} "
                Debug.WriteLine(infoMessage)
            End Try
           Return lastLines
            
        Internal Method InitLogging() As Void
            logPath := Environment.CurrentDirectory
            logFileName := "10_LogFile.txt"
            Var txtPath := Path.Combine(logPath, logFileName)
            Var listener1 := TextWriterTraceListener{txtPath, "FileListener"}
            Debug.Listeners:Add(listener1)
            Return
            
        Private Method bnGenerateDebug_Click(sender As Object, e As EventArgs) As Void Strict
            Debug.WriteLine(i"{DateTime.Now.ToString()}: Log around the clock")
            Debug.Flush()
            lbLog:Items:Add(GetLastLine(Path.Combine(logPath, logFileName)))
            Return
        End Method
        
        Private Method bnClearLog_Click(sender As Object, e As EventArgs) As Void Strict
            Try
                Var listener := Debug.Listeners["FileListener"]
                Debug.Listeners.Remove("FileListener")
                listener:Dispose()
                File.Delete(Path.Combine(logPath, logFileName))
                InitLogging()
                Var infoMessage := i"{Path.Combine(logPath, logFileName)} was sucessfully deleted"
                Debug.WriteLine(infoMessage)
                lbLog:Items:Add(GetLastLine(Path.Combine(logPath, logFileName)))
            Catch ex As IOException
                Var infoMessage := i"!!! bnClearLog_Click->IOException {ex.Message} "
                Debug.WriteLine(infoMessage)
                Debug.Flush()
                lbLog:Items:Add(GetLastLine(Path.Combine(logPath, logFileName)))
           Catch ex As SystemException
                Var infoMessage := i"!!! bnClearLog_Click->SystemException {ex.Message} "
                Debug.WriteLine(infoMessage)
                Debug.Flush()
                lbLog:Items:Add(GetLastLine(Path.Combine(logPath, logFileName)))
            End Try
            Return
        End Method
            
    End Class 
End Namespace
