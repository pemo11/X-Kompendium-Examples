// File: DialogForm.prg
// The DialogExample for the X# Kompendium

Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing

Using System.Text

Using System.Windows.Forms

Begin Namespace DialogboxExample

    Public Partial Class DialogForm Inherit Form
        Public Property Username As String Auto
        Public Property Birthdate As Datetime Auto
    
        Public Constructor() Strict
            InitializeComponent()
            tbUsername:TextChanged += {sender, e => 
                Username := tbUsername:Text
            }  
        
        Private Method bnOK_Click(sender As Object, e As EventArgs) As Void Strict
            Birthdate := mcBirthdate:SelectionStart
            Self:DialogResult := DialogResult.OK
            Self:Close()
            Return
        End Method
        
    End Class

End Namespace
