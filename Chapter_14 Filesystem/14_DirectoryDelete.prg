// file: 14_DirectoryDelete.prg
// Example for deleting a directory with its content
using System.IO

Function CreateDirectory(Path As String) As Void
  Directory.CreateDirectory(Path)
  For Local i:= 1 UpTo 10
      Begin Using var fi := File.CreateText(Path.Combine(Path, i"File{i}.txt"))
       // nothing to do here
      End Using
  Next
  ? i"{Path} created and filled with files"

Function Start() As Void
   var dir1 := Path.Combine(Path.GetTempPath(), "sub1")
   // Check if the directory exists
   If !Directory.Exists(dir1)
      CreateDirectory(dir1)
   EndIf
   // List all files from dir1
   ForEach var fi in DirectoryInfo{dir1}:GetFiles("*.txt")
     ? fi
   Next
   // Now, delete the directory recursevly
   Directory.Delete(dir1, True)
   ? i"{dir1} was successfully deleted for good!"
 