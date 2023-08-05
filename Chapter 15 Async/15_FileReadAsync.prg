// file: 15_FileReadAsync.prg
// Example for reading a large file with an async reader
using System.IO
using System.Threading.Tasks

Async Function GetFile(FilePath As String) As Task<Int>
    Local buffer As Byte[]
    Local result As Int
    Begin Using var fs := File.Open(FilePath, FileMode.Open)
      buffer := byte[]{fs:Length}
      result := await fs:ReadAsync(buffer, 0, buffer:Length)
    End Using
    Return result
    
Function Start() As Void
    var filePath := Path.Combine(Environment.CurrentDirectory, "LargeFile.txt")
    ? "Start reading..."
    var buffer := GetFile(filePath)
    ? buffer:Result

