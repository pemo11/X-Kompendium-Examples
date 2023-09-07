// file: XS_AutoProperties.prg
// A class definition with auto properties

Public Class Document
    Public Property Id As Int Auto
    Public Property Title As String Auto
    Public Property PubYear As Int Auto

    Constructor(Id As Int, Title As String)
       Self:Id := Id
       Self:Title := Title
       Self:PubYear := DateTime.Now:Year

    Method ToString() As String
      Return i"Id:{Self:Id} Title:{Self:Title} PubYear:{Self:PubYear}"
End Class

Function Start() As Void
  var d1 := Document{1, "C# no more"}
  ? d1:ToString()

