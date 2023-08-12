// file: 09_GenericDictionary1.prg
// Example for using a Dictionary<T,S> 

using System.Collections.Generic

Class CityInfo
  Internal Property Name As String Auto
  Internal Property Population As Int Auto

  Public Method ToString() As String
     Return i"City: {Self:Name} Population: {Self:Population}"

End Class

Function Start() As Void
    Local cities := Dictionary<String, CityInfo>{} As Dictionary<String, CityInfo>
    cities:Add("ES", CityInfo{}{Name:="Esslingen", Population:=89000})
    cities:Add("PO", CityInfo{}{Name:="Plochingen", Population:=34000})
    cities["GP"] := CityInfo{}{Name:="G�ppingen", Population:=45000}
    cities["S"] := CityInfo{}{Name:="Stuttgart", Population:=700000}
    Foreach k As String In cities:Keys
        ? cities[k]
    Next
