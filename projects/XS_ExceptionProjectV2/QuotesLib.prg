// File: QuotesLib.prg

Using System
Using System.Configuration
Using System.IO
Using System.Collections.Generic
Using System.Text

Begin Namespace ExceptionProject
    
    Internal Class Quotes
        Private Static quoteList As List<String>
            
        Internal Static Method InitQuotes() As Void
            quoteList := List<String>{}
            Try
                Var quotesPath := ConfigurationManager.AppSettings["quotesFile"]
                Begin Using Var sr := StreamReader{quotesPath, Encoding.Default}
                    While !sr:EndOfStream
                        quoteList:Add(sr:readLine())
                    End While
                End Using
            Catch ex As SystemException
                Throw SystemException{i"Error InitQuotes: {ex:Message}", ex}
            End Try
            
        Internal Static Method GetQuote(Error := False As Logic) As String
            Try
                Var z := Iif(!Error, Random{}:Next(0, quoteList:Count), quoteList:Count)
                Return quoteList[z]
            Catch ex As SystemException
                Throw SystemException{i"Error GetQuote: {ex:Message}", ex}
            End Try
            
    End Class
	
End Namespace


