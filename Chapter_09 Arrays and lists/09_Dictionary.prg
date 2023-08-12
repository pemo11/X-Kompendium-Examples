// file: 09_Dictionary.prg
// example for an dictionary based on a hashtable class

using System.Collections

Class CityInfo
  Internal Property Name As String Auto
  Internal Property Population As Int Auto

  Public Method ToString() As String
     Return i"City: {Self:Name} Population: {Self:Population}"

End Class

Function Start() As Void
    var cities := Hashtable{}
    cities:Add("ES", CityInfo{}{Name:="Esslingen", Population:=89000})
    cities:Add("PO", CityInfo{}{Name:="Plochingen", Population:=34000})
    cities:Add("GP", CityInfo{}{Name:="Göppingen", Population:=45000})
    cities["S"] := CityInfo{}{Name:="Stuttgart", Population:=700000}
    Foreach k As String In cities:Keys
        ? cities[k]:ToString()
    Next
