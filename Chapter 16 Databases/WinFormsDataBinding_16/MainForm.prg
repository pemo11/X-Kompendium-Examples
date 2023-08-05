// File: MainForm.prg

Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing
Using System.Linq

Using System.Text
Using System.Threading.Tasks

Using System.Windows.Forms

Begin Namespace WinFormsDataBinding_16

    Public Partial Class MainForm Inherit Form
        Private BsSource As BindingSource
        
        Public Constructor() 
            InitializeComponent()
            InitData()
            bnMovePrev:Click += EventHandler{MoveCursor}
            bnMoveFirst:Click += EventHandler{MoveCursor}
            bnMoveLast:Click += EventHandler{MoveCursor}
            bnMoveNext:Click += EventHandler{MoveCursor}
            Return
        End Constructor
        
        Method MoveCursor(Sender As Object, e As EventArgs) As Void
            Switch ((Button)Sender):Name
                Case "bnMovePrev"
                    BsSource:MovePrevious()
                Case "bnMoveFirst"
                    BsSource:MoveFirst()
                Case "bnMoveLast"
                    BsSource:MoveLast()
                Case "bnMoveNext"
                    BsSource:MoveNext()                    
            End Switch
            
        Method InitData() As Void
            Var sqlText := "Select * From Book"
            BsSource := BindingSource{}
            // BsSource:DataSource := DAL.InvokeSelect(sqlText)
            // Var row := DAL.InvokeSelectRow(sqlText)
            BsSource:DataSource := DAL.GetBooks()
            DataGridView1:DataSource := BsSource
            Return
            
    End Class 
End Namespace
