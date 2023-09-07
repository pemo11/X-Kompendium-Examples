// file: XS_WriteBinaryFile.prg
// Example for writing a binary file - an byte array will be written to a file
// hint: if you get error XS9008: Untyped arrays are not available in the selected dialect 'Core'
// something is wrong with your LINQ query

using System.IO
using System.Linq

Function Start() As Void
   // Getting 10 numbers first
   var r := Random{}
   // Lets use a LINQ query to make the example less boring - the type casting (Byte) is important
   var numbers := Enumerable.Range(1,10):Select({z => (Byte)r:Next(1,100)}):OrderBy({z => z}):ToArray()
   // No store all the numbers in a file
   var filePath := Path.Combine(Environment.CurrentDirectory, "Numbers.dat")
   Begin Using var fs := FileStream{filePath, FileMode.Create}
     Begin Using var bWrite := BinaryWriter{fs}
        // use the overload write(byte[], start, end) method
        bWrite:Write(numbers, 0, numbers:Length)
     End Using
   End Using
   var numBytes := FileInfo{filePath}:Length
   ? i"{numBytes} Bytes written to {filePath}"
