// file: 15_AsyncLongOperation.prg

using System.IO
using System.Threading
using System.Threading.Tasks

Class App

  Static Async Method LongOperation(FileCount As Int) As Task
       var tmpPath := Path.GetTempPath()
       var t := Task.Run({ =>
        For Local i:= 1 UpTo FileCount
          var fileName := i"file_{i.ToString(""000"")}.dat"
          var filePath := Path.Combine(tmpPath, fileName)
          File.Create(filePath)
        Next
       })
     ? i"{FileCount} files created in {tmpPath}..."
     
  Async Static Method Start() As Task
      await LongOperation(10)
      ? "Finished..."
      
End Class