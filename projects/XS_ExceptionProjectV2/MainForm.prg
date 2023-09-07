// File: MainForm.prg
Using System
Using System.Windows.Forms

Begin Namespace ExceptionProject

    Public Partial Class mainForm ;
        Inherit Form

    Public Constructor() Strict
        InitializeComponent()
        Try
            Quotes.InitQuotes()
        Catch ex As SystemException
            Messagebox.Show(ex:Message, "Error in Class Constructor", MessageboxButtons.OK, MessageboxIcon.Error)
        End Try
        Return
    End Constructor


    Private Method bnQuote_Click(sender As Object, e As EventArgs) As Void Strict
        Try
            lbQuote:Text := Iif(!cbSimulate:Checked, Quotes.GetQuote(), Quotes.GetQuote(Error:=True))
        Catch ex As SystemException
            Messagebox.Show(ex:Message, "Error in bnQuote_Click", MessageboxButtons.OK, MessageboxIcon.Error)
        End Try
        Return

End Class 
End Namespace
