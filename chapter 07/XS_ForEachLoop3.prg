// file: 07_ForEachLoop3.prg
// Enumerating a List<T> with foreach and an explicit data type

using System.Collections.Generic

Function Start() As Void
    Var Cities := List<String>{}{"Esslingen","Plochingen","Göppingen","Nürtingen"}
    Foreach City As String In Cities
        ? City
    Next
