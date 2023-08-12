// File: DAL.prg
// Don't forget to add a reference to System.Configuration.dll

Using System
Using System.Collections.Generic
Using System.Configuration
Using System.Data
Using System.Data.Common

Begin Namespace DALDB
    
	 Public Class DBHelper
        Private Static ProviderName As String
        Private Static ConString As String
            
        /// <summary>
        /// Initializes the DBHelper with the name of the section in the config file
        /// </summary>
        /// <param name="SectionName"></param>            
        Public Static Method Init(SectionName As String) As Void
            Try
                Local ds := (DataSet)ConfigurationManager.GetSection("system.data") As DataSet
                Local ta := ds:Tables[0] As DataTable
                Foreach row As DataRow In ta:Rows
                    System.Diagnostics.Debug.WriteLine(row[0])
                Next
                Var configMap := ExeConfigurationFileMap{}
                ConfigMap:ExeConfigFilename := "Db.config"
                Var dbConfig := ConfigurationManager:OpenMappedExeConfiguration(ConfigMap, ConfigurationUserLevel:None)
                Foreach Setting As ConnectionStringSettings In DbConfig:ConnectionStrings:ConnectionStrings
                    If Setting:Name == SectionName
                        ProviderName := Setting:providerName
                        ConString := Setting:connectionString
                    Endif
                Next
                If ProviderName == ""
                    Throw SystemException{i"Providername not found in section {SectionName}"}
                Endif
            Catch ex As SystemException
                Throw SystemException{i"Error in DBHelper.Init: {ex.Message}"}
            End Try

            
        /// <summary>
        /// Returns a DataTable as a result of a select statement
        /// </summary>
        /// <param name="SqlText"></param>
        /// <returns></returns>
        Public Static Method InvokeSelect(SqlText As String) As DataTable
            Local ta As DataTable
            Try
                Local factory := DbProviderFactories.GetFactory(ProviderName) As DbProviderFactory
                ta := DataTable{}
                Var cn := factory:CreateConnection()
                cn:ConnectionString := ConString
                Var cmd := cn:CreateCommand()
                cmd:CommandText := SqlText
                Var da := factory:CreateDataAdapter()
                da:MissingSchemaAction := MissingSchemaAction.AddWithKey
                da:SelectCommand := cmd
                da:Fill(ta)
            Catch ex As SystemException
                Throw SystemException{i"Error in DBHelper.InvokeSelect: {ex.Message}"}
            End Try
            Return ta   
            
            
        /// <summary>
        /// Executes a non query statement and returns the number of rows affected
        /// </summary>
        /// <param name="SqlText"></param>
        /// <returns></returns>            
        Internal Static Method ExecuteNonQuery(SqlText As String) As Int
            Local cn As DbConnection
            Try
                Local factory := DbProviderFactories.GetFactory(ProviderName) As DbProviderFactory
                cn := factory:CreateConnection()
                cn:ConnectionString := ConString
                cn:Open()
                Var cmd := cn:CreateCommand()
                cmd:CommandText := SqlText
                Return cmd:ExecuteNonQuery()
            Catch ex As SystemException
                Throw SystemException{i"Error in DBHelper.ExecuteNonQuery: {ex.Message}"}
            Finally
                If cn != Null && cn:State == ConnectionState:Open
                    cn:Close()
                Endif
            End Try
            
        /// <summary>
        /// Updates a datatable
        /// </summary>
        /// <param name="Table"></param>
        /// <returns></returns>
        Public Static Method UpdateTable(Table As DataTable) As Int
            Local rowsAffectedTotal As Int
            Local sqlText := "" As String
            Try
                Foreach row As DataRow In Table:Rows
                    Switch row:RowState
                        Case DataRowState:Added
                            row:AcceptChanges()
                            sqlText := i"Insert Into {Table.TableName} ("
                            Foreach col As DataColumn In Table:Columns
                                // Don't include the primary key and null columns
                                If !row[col] Is DBNull && col:ColumnName <> Table:PrimaryKey[1]:ColumnName
                                    sqlText += i"{col.ColumnName}, "
                                Endif
                            Next
                            // Remove the last comma
                            sqlText := sqlText:Substring(0, sqlText:Length - 2)
                            // Now the values
                            sqlText += i") Values ("
                            Foreach col As DataColumn In Table:Columns
                                // Don't include the primary key and null columns
                                If !row[col] Is DBNull && col:ColumnName <> Table:PrimaryKey[1]:ColumnName
                                    If col:DataType == Typeof(String) || col:DataType == Typeof(Datetime)
                                        sqlText += i"'{row[col.ColumnName]}', "
                                    Else
                                        sqlText += i"{row[col.ColumnName]}, "
                                    Endif
                                Endif
                            Next
                            // Remove the last comma
                            sqlText := sqlText:Substring(0, sqlText:Length - 2)
                            sqlText += ")"
                            rowsAffectedTotal += ExecuteNonQuery(sqlText)
                        Case DataRowState:Modified
                            sqlText := i"Update {Table.TableName} Set "
                            Foreach col As DataColumn In Table:Columns
                                If col:DataType != Typeof(DBNull)
                                    If col:ColumnName <> Table:PrimaryKey[1]:ColumnName
                                        If row[col, DataRowVersion:Original] != row[col, DataRowVersion:Current]
                                            If col:DataType == Typeof(String) || col:DataType == Typeof(Datetime)
                                                sqlText += i"{col.ColumnName} = '{row[col.ColumnName]}', "
                                            Else
                                                sqlText += i"{col.ColumnName} = {row[col.ColumnName]}, "
                                            Endif
                                        Endif
                                    Endif
                                Endif
                            Next
                            // Remove the last comma
                            sqlText := sqlText:Substring(0, sqlText:Length - 2)
                            sqlText += i" Where {Table.PrimaryKey[1]} = {row[Table.PrimaryKey[1]]} "
                            Foreach col As DataColumn In Table:Columns
                                If !row[col] Is DBNull && col:ColumnName <> Table:PrimaryKey[1]:ColumnName
                                    If col:DataType == Typeof(String) || col:DataType == Typeof(Datetime)
                                        sqlText += i"And {col.ColumnName}='{row[col.ColumnName,DataRowVersion.Original]}' "
                                    Else
                                        sqlText += i"And {col.ColumnName}={row[col.ColumnName,DataRowVersion.Original]} "
                                    Endif
                                Endif
                            Next
                            // TODO: Where clause for all the other fields to detected a change made by another user
                            rowsAffectedTotal += ExecuteNonQuery(sqlText)
                        Case DataRowState:Deleted
                            row:AcceptChanges()
                            sqlText := i"Delete From {Table.TableName} Where {Table.PrimaryKey[1]} == {row[Table.PrimaryKey[1]]}"
                            rowsAffectedTotal += ExecuteNonQuery(sqlText)
                    End Switch
                Next
                Return rowsAffectedTotal
            Catch ex As SystemException
                Throw SystemException{i"Error in DBHelper.UpdateTable: {ex.Message}"}
            End Try
        
        End Class
        
End Namespace
