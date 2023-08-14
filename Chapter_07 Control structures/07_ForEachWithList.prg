// file: 07_ForEachWithList.prg
// Enumerating a List<T> with foreach and looping out

using System.Collections.Generic

Function Start() As Void
    Var Cities := List<String>{}{"Esslingen","Stuttgart","Plochingen","Göppingen","Nürtingen"}
    Foreach City As String In Cities
        If !City:EndsWith("gen")
            Loop
        Endif
        ? City
    Next
