// File: MainForm.prg
Using System
Using System.Collections.Generic
Using System.Configuration
Using System.IO
Using System.Text
Using System.Windows.Forms

Begin Namespace ExceptionProject

    Public Partial Class mainForm ;
        Inherit Form
        Private quoteList As List<String>
        Private quotesPath As String

    Public Constructor()   Strict//Form1
        InitializeComponent()
        Self:quoteList := InitQuotes()
        Return
    End Constructor

    Private Method InitQuotes() As List<String>
        Var tmpList := List<String>{}
        Try
            quotesPath := ConfigurationManager.AppSettings["quotesFile"]
            Begin Using Var sr := StreamReader{quotesPath, Encoding.Default}
                While !sr:EndOfStream
                    tmpList:Add(	sr:readLine())
                End While
            End Using
        Catch ex As SystemException
            Var infoMessage := i"Error InitQuotes: {ex:Message}"
            Messagebox.Show(infoMessage, "Error", MessageboxButtons.OK, MessageboxIcon.Error)
        End Try
        Return tmpList

    Private Method bnQuote_Click(sender As Object, e As EventArgs) As Void Strict
        Var z := Random{}:Next(0, Self:quoteList:Count)
        lbQuote:Text := IIf(cbSimulate:Checked, Self:quoteList[-1], Self:quoteList[z])
        Return

End Class 
End Namespace
