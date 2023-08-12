// file: 09_FixedSizeNetArrays.prg
// Initialize an fixed size .NET-Array with Objects

Class XDocument
    Property Id As Int Auto
    Property Title As String Auto
        
    Constructor (Id As Int, Title As String)
        Self:Id := Id
        Self:Title := Title
            
End Class

Function Start() As Void
    Local Documents := XDocument[]{2} As XDocument[]
    ? i"Number of Documents: {Documents.Length}"
    // Beware, index starts with 1
    Documents[1] := XDocument{0, "Have fun with C#!"}
    Documents[2] := XDocument{1, "Have more fun with X#!"}
    Foreach dok As XDocument In Documents
        ? dok:Title
    Next
    // Do it, do it one more time...
    For Var i := 1 UpTo Documents:Length
        ? Documents[i]:Title
    Next
