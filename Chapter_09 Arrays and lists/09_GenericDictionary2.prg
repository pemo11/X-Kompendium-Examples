// file: 09_GenericDictionary2.prg
// Example for using a Dictionary<T,S> 

using System.Collections.Generic

Class CityInfo
  Internal Property Name As String Auto
  Internal Property Population As Int Auto

  Public Method ToString() As String
     Return i"City: {Self:Name} Population: {Self:Population}"

End Class

Function Start() As Void
    Local cities := Dictionary<String, CityInfo>{} {;
        {"ES", CityInfo{}{Name:="Esslingen", Population:=89000}},;
        {"PL", CityInfo{}{Name:="Plochingen", Population:=34000}},;
        {"GP", CityInfo{}{Name:="G�ppingen", Population:=45000}};
        {"S", CityInfo{}{Name:="Stuttgart", Population:=45000}};
        } As Dictionary<String, CityInfo>
    ForEach k As String In cities:Keys
        ? cities[k]
    Next
