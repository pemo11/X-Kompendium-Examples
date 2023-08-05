// file: 11_ExtensionMethod.prg
// Example for an extension method

Class StringEx 

  Static Method Capitalize(self str As String) As String
    Local strRet := "" As String
    ForEach var w in str:split(c" ")
       strRet += w:Substring(0,1):ToUpper() + w:Substring(1) + " "
    Next
    Return strRet:Substring(0, strRet:Length - 1)

End Class

Function Start() As Void
  Local s1 := "casino royal total" As String
  ? s1:Capitalize()
