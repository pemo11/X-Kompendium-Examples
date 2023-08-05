// File: DAL.prg

Using System.Data
Using System.Data.Common
Using System.Collections.Generic

Begin Namespace WinFormsDataBinding_16
    
    Class DAL
        
        Internal Static Method InvokeSelect(SqlText As String) As DataTable
            Var providerName := "System.Data.Sqlite"
            Var conString := "Data Source=.\Booklib.db3" 
            Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
            Var ta := DataTable{}
            Var cn := factory:CreateConnection()
            cn:ConnectionString := conString
            Var cmd := cn:CreateCommand()
            cmd:CommandText := SqlText
            Var da := factory:CreateDataAdapter()
            da:SelectCommand := cmd
            da:Fill(ta)
            Return ta
            
        Internal Static Method InvokeSelectRow(SqlText As String) As DataRow
            Var providerName := "System.Data.Sqlite"
            Var conString := "Data Source=.\Booklib.db3" 
            Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
            Var ta := DataTable{}
            Var cn := factory:CreateConnection()
            cn:ConnectionString := conString
            Var cmd := cn:CreateCommand()
            cmd:CommandText := SqlText
            Var da := factory:CreateDataAdapter()
            da:SelectCommand := cmd
            da:Fill(ta)
            Return ta:Rows[0]
            
        Internal Static Method GetBooks() As List<Book>
            Var providerName := "System.Data.Sqlite"
            Var conString := "Data Source=.\Booklib.db3" 
            Var books := List<Book>{}
            Try
                Local factory := DbProviderFactories.GetFactory(providerName) As DbProviderFactory
                Begin Using Var cn := factory:CreateConnection()
                    cn:ConnectionString := conString
                    cn:Open()
                    Var cmd := cn:CreateCommand()
                    cmd:CommandText := "Select * From Book"
                    Var dr := cmd:ExecuteReader()
                    While dr:Read()
                        // not complete yet
                        Var idValue := dr:GetInt32(dr:GetOrdinal("id"))
                        Var titleValue := dr:GetString(dr:GetOrdinal("title"))
                        books:Add(Book{}{id := idValue, title := titleValue})
                    End While
                End Using
                Return books
            Catch ex As SystemException
                Throw ex
            End Try
        
    End Class
    
    
    
End Namespace