USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text

Begin Namespace HelloWorldLib
    
    Class HelperClass
    
        Public Static Method GeneratePassword(Length := 10 As Int) As String
            Var pw := ""
            Var r := Random{DateTime.Now:Millisecond}
            For Local i := 1 Upto Length
                pw += Chr((Dword)r:Next(33, 93))
            Next
            Return pw
            
        Public Static Method GeneratePasswordEx(Length := 10 As Int, FirstNonAlpha := True As Logic) As String
            If length < 8
                Throw ArgumentException{"Minimum password length is 8"}
            Endif
            Var r := Random{DateTime.Now:Millisecond}
            Var pw := Iif(FirstNonAlpha,Chr((Dword)r:Next(33,47)), "")
            For Local i := 1 Upto Length
                pw += Chr((Dword)r:Next(48, 93))
            Next
            Return pw

    End Class
    
End Namespace
