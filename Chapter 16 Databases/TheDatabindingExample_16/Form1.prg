// File: Form1.prg

Using System
Using System.Collections.Generic
Using System.ComponentModel
Using System.Data
Using System.Drawing
Using System.Linq

Using System.Text
Using System.Threading.Tasks

Using System.Windows.Forms

Using DALDB

Begin Namespace TheDatabindingExample_16

    Public Partial Class Form1 ;
        Inherit Form
        Private BsSourceBooks As BindingSource
        Private BsSourceBookCopies As BindingSource
        
        Public Constructor() Strict
            InitializeComponent()
            DBHelper.Init("bookLib")
            InitData()
            Return
            
        Public Method InitData() As Void
            BsSourceBooks := BindingSource{}
            Var sqlText := "Select * From Book"
            Try
                BsSourceBooks:DataSource := DBHelper.InvokeSelect(sqlText)
                DataGridView1:DataSource := BsSourceBooks
                // Not really needed, but it's a good practice to set the AllowNew property explicitely to True
                BsSourceBooks:AllowNew := True
                
                // Adapt the columns width to the content
                DataGridView1:AutoResizeColumns(DataGridViewAutoSizeColumnsMode:AllCells)
                // Set the data source for the binding navigator
                bindingNavigator1:BindingSource := BsSourceBooks
                // Add the event handler for the CurrentChanged event of the binding source
                BsSourceBooks:CurrentChanged += EventHandler{CurrentChangedEvent}
                // Add a new button for adding records to the binding navigator
                Var tsAddButton := ToolStripButton{}
                tsAddButton:Click += EventHandler{AddItemClick}
                tsAddButton:Image := bindingNavigator1:AddNewItem:Image
                tsAddButton:Text := "Add"
                // Remove the current add button
                bindingNavigator1:Items:Remove(bindingNavigator1:AddNewItem)
                bindingNavigator1:Items:Add(tsAddButton)
                // Add a new button for deleting records to the binding navigator
                Var tsDeleteButton := ToolStripButton{}
                tsDeleteButton:Click += EventHandler{DeleteItemClick}
                tsDeleteButton:Image := bindingNavigator1:DeleteItem:Image
                tsDeleteButton:Text := "Delete"
                bindingNavigator1:Items:Add(tsDeleteButton)
                bindingNavigator1:Items:Remove(bindingNavigator1:DeleteItem)
                // Add a button for updating the data source
                Var tsUpdateButton := ToolStripButton{}
                tsUpdateButton:Click += EventHandler{UpdateUpdateClick}
                tsUpdateButton:Text := "Update"
                bindingNavigator1:Items:Add(tsUpdateButton)
            Catch ex As SystemException
                Messagebox.Show(ex:Message, Application:ProductName, MessageboxButtons.OK, MessageBoxIcon.Error)
            End Try
            LoadBookCopies()
            
            
        Internal Method LoadBookCopies() As Void
            BsSourceBookCopies := BindingSource{}
            Var bookId := ((DataRowView)BsSourceBooks:Current)["Id"]
            Var sqlText := i"Select * From BookCopy Where Id={bookId}"
            BsSourceBookCopies:DataSource := DBHelper.InvokeSelect(sqlText)
            DatagridView2:DataSource := BsSourceBookCopies
            
        Internal Method CurrentChangedEvent(Sender As Object, e As EventArgs) As Void
            LoadBookCopies()
            
        Internal Method UpdateUpdateClick(Sender As Object, e As EventArgs) As Void
            Var rowsAffected := DBHelper.UpdateTable((DataTable)BsSourceBooks:DataSource)
            If rowsAffected == 0
                Messagebox.Show("Update not possible due to changes made by another user", Application:ProductName, MessageboxButtons.OK,;
                 MessageboxIcon.Information)    
            Else
                Messagebox.Show(i"{rowsAffected} row(s) affected by the update operation", Application:ProductName, MessageBoxButtons.OK, MessageBoxIcon.Information)
            EndIf
            
        Internal Method DeleteItemClick(Sender As Object, e As EventArgs) As Void
            If MessageBox.Show("Delete this record?", "Confirmation needed", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes
                BsSourceBooks:RemoveCurrent()
            Endif
            
        Internal Method AddItemClick(Sender As Object, e As EventArgs) As Void
            If MessageBox.Show("Add a new record?", "Confirmation needed", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes
                Var newRow := (DataRowView)BsSourceBooks:AddNew()
                newRow["Title"] := "New title"
                newRow["Author"] := "New author"
                newRow["Publisher"] := "New publisher"
                newRow["PubYear"] := DateTime.Now:Year
                newRow["Edition"] := 1
                newRow["ISBN"] := "New ISBN"
                newRow["Language"] := "English"
                newRow["Pages"] := 0
                // Add the new row to the data source (its still necessary)
                ((DataTable)BsSourceBooks:DataSource):Rows:Add(newRow:Row)
            Endif
            
    End Class 
End Namespace
