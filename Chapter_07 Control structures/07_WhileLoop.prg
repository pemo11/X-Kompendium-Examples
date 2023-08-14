// file: 07_WhileLoop3prg
// Skipping iterations with Loop (continue in C#)

Function Start() As Void
    Local Counter := 1 As Int
    While Counter < 10
        Counter++
        If Counter > 5
            Loop
        Endif
        ? i"*** Looping Nr. {Counter} ***"
    End While
