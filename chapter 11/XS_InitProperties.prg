// file: XS_InitProperties.prg
// Initializing properties with instancing a class

Class Document
    Property Id As Int Auto
    Property Title As String Auto

    Constructor()
      // Not needed

    Method ToString() As String
      Return i"Id: {Self:Id} Title: {Self:Title}"

End Class

Function Start() As Void
   var d1 := Document{}{Id := 1, Title := "X# forever"}
   ? d1
