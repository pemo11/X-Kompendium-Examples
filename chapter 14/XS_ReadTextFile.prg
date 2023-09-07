// file: XS_ReadTextFile.prg
// Reading an existing text file with the file class

using System.IO

Function Start() as void
   var filePath := "C:\Windows\Win.ini"
   var textContent := File.ReadAllText(filePath)
   ? textContent
   // no need to close anything since there is no file handle available
