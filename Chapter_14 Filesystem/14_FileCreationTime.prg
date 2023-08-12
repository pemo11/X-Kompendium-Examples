// file: 14_CreationTime.prg
// Gettig the Creation time of every file in the current directory
using System.IO

Function Start() As Void
   var dir1 := Environment.CurrentDirectory
   ForEach var fi in DirectoryInfo{dir1}:GetFiles()
      ? i"Creation time of {fi.Name}: {fi.CreationTime}"
   Next