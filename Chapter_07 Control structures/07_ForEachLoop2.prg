// file: 07_ForEachLoop2.prg
// Enumerating a List<T> with foreach and and var

using System.Collections.Generic

Function Start() As Void
    Var Cities := List<String>{}{"Esslingen","Plochingen","G�ppingen","N�rtingen"}
    Foreach Var City In Cities
        ? City
    Next
