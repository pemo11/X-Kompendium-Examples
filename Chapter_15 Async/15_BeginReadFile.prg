// file: AsyncFileRead.prg
// An example for asynchronously reading a large text file

using System.IO

Function ReadCompleted(Result As IAsyncResult) As Void
  ? "Read is complete..."
  var resultBuffer := (Byte[])Result:AsyncState
  ? i"Buffer length = {resultBuffer.Length}" + Environment.NewLine
  
Function Start() As Void
    var filePath := Path.Combine(Environment.CurrentDirectory, "LargeFile.txt")
    var fs := File.OpenRead(filePath)
    var buffer := byte[]{fs:Length}
    var aResult := fs:BeginRead(buffer, 0, buffer:Length, AsyncCallback{ReadCompleted}, buffer)
    ? "Lou says, I am waiting for my file..."
    aResult:AsyncWaitHandle:WaitOne()
    ? "Completed..."
    var bytesRead := fs:EndRead(aResult)
    ? i"{bytesRead} Bytes read"
    Console.ReadLine()