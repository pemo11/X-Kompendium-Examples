// file: 07_ForLoop2.prg
// Classic for loop with a lower end value

Function Start() As Void
    For Local i := 10 DownTo 1 Step 2
        ? i
    Next
