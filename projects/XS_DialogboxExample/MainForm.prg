// File: MainForm.prg
// The DialogExample for the X# Kompendium

Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing
Using System.Linq

Using System.Text
Using System.Threading.Tasks

Using System.Windows.Forms

Begin Namespace DialogboxExample

    Public Partial Class MainForm ;
        Inherit System.Windows.Forms.Form

        Public Constructor()   Strict//Form1
            InitializeComponent()
            Return
        End Constructor
        
        Private Method bnStartDialogbox_Click(sender As System.Object, e As System.EventArgs) As Void Strict
            Var dlgBox := DialogForm{}
            If dlgBox:ShowDialog() == DialogResult.OK
                lbUsername:Text := dlgBox:Username
                lbBirthdate:Text := dlgBox:Birthdate:ToShortDateString()
            Endif
            Return
            
        End Method
    End Class 
End Namespace
