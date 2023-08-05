// file: 08_RefParameterExample2.prg
// Example for a comparison between value and ref parameter

Function SortArray1(numbers as Int[]) As Int[]
    Array.Sort(numbers)
    Return numbers

Function SortArray2(numbers ref Int[]) As Void
    Array.Sort(numbers)

Function PrintNumbers(numbers as Int[]) As Void
    ForEach var n in numbers
        ? n
    Next

Function Start() As Void
    var numbers := <Int>{44,33,11,55,22}
    var numbers1 := SortArray1(numbers)
    printNumbers(numbers1)
    numbers := <Int>{44,33,11,55,22}
    SortArray2(numbers)
    printNumbers(numbers)
