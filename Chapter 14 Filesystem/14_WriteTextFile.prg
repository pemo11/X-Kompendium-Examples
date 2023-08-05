// file: 14_WriteTextFile.prg
// Writing a text file with the file class

using System.IO
using System.Collections.Generic

Function Start() as void
    var monate := List<String>{}
    for Local m := 1 UpTo 12
        monate.add(DateTime{2022,m,1}:ToString("MMMM"))
    next
    var filePath := "Monate.txt"
    File.WriteAllLines(filePath, monate)A
