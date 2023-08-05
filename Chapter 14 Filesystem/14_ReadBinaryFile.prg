// file: 14_ReadBinaryFile.prg
// Example for reading a binary file - that had been written with an byte array before
   
using System.IO

Function Start() As Void
   var filePath := Path.Combine(Environment.CurrentDirectory, "Numbers.dat")
   Begin Using var fs := FileStream{filePath, FileMode.Open}
     Begin Using var bReader := BinaryReader{fs}
       // there is no EndOfFile property
       While bReader:PeekChar() != -1
         // Read the type that had been written
         ? bReader:ReadByte()
       End While
     End Using
   End Using
