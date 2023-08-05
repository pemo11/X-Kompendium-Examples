// file: 15_HelloAsync3.prg
// A very simple kind of Hello, World for Async operations
// compile with xsc ./15_HelloAsync.prg /main:App

Using System.Collections.Generic
Using System.IO
Using System.Linq
Using System.Threading.Tasks

Class App

  // Something that would take a little longer in a real application
  Static Async Method GetFilesAsync(Path As String) As Task<List<FileInfo>>
     ? "Getting files..."
     // Create a new task and await it so it returns List<FileInfo>
     var files := await Task.Run({ => 
      var dir := DirectoryInfo{Path}
      // There is no built-in GetFilesAsync() method
      var dirFiles := dir:GetFiles("*",SearchOption.AllDirectories):Where({ f => f:Extension == ".png" .or. f:Extension == ".jpg"}):ToList()
      return dirFiles
     })
     return files
 
  // Starting point of the Start() method
  Static Async Method Start() As Task
    ? "Calling asynchronous GetFiles() method..."
    var imgPath := Path.Combine(Environment.GetEnvironmentVariable("userprofile"),"pictures")
    var files := await GetFilesAsync(imgPath)
    ?files:Count
    

End Class