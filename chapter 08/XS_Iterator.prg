// file: XS_Iterator.prg
// Example for an Iterator

using System.Collections.Generic
using System.IO

Function GetIniFiles() As IEnumerable<FileInfo>
   var iniFiles := DirectoryInfo{"C:\Windows"}:GetFiles("*.ini")
   ForEach var iniFile in iniFiles
      yield return iniFile
   Next

Function Start() As Void
   ForEach var iniFile in GetIniFiles()
     ? iniFile:Name
   Next