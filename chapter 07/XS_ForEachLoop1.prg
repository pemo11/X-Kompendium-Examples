// file: XS_ForEachLoop1.prg
// Classic for loop with a negative step

Function Start() As Void
   For Local i := 10 DownTo 1 Step 2
        ? i
    Next
