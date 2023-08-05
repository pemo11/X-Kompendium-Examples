// file: 11_CallSuper.prg
// Calling super() from an inherited class

Public Class Vehicle
    Public Property Id As String Auto
    Public Property Description As String Auto

    Constructor(Id As String, Description As String)
        Self:Id := Id
        Self:Description := Description
        Return

End Class

Public Class Car Inherit Vehicle
    Public Property Model As String Auto
    Public Property Color As String Auto

    Constructor(Id As String, Description As String, Model As String, Color As String)
        Super(Id, Description)

End Class
        
Function Start() As Void
    var c1 := Car{"qasc1", "The Nissan Qashqai", "1.3 DIG-T", "White"}
    ? c1
