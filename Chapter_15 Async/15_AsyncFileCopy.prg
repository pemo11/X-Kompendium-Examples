// File: 15_AsyncFileCopy.prg
// Example for how to use an asynchronous method

// public virtual System.Threading.Tasks.Task CopyToAsync (Stream destination, int bufferSize, CancellationToken cancellationToken)

using System.IO

Async Function CopyOperation() As Void
    var sourcePath := Path.Combine(Environment.CurrentDirectory, "LargeFile.txt")
    var destPath := "LargeFile2.txt"
    If File.Exists(destPath)
       File.Delete(destPath)
    EndIf
    ? "Starting async copying..."
    Begin Using var fsSource := File.Open(sourcePath, FileMode.Open)
      Begin Using var fsDest := File.Open(destPath, FileMode.Create)
        await fsSource.CopyToAsync(fsDest)
      End Using
    End Using
    ? "Finish async copying..."
    // Not possible because the copy operation is not finished yet and the file does not exists
    // ? i"Destination exists: {File.Exists(destPath)}"

Function Start() As Void
    CopyOperation()
    // Necessary to give the copy operation time to complete
    Console.ReadLine()