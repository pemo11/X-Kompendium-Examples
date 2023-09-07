// file: XS_TryCatch.prg
// Example for exception handling with try catch

Function Start() As Void
  var numbers := <Int>{11,22,33,44,55,66,77}
  Try
    var z := Random{}:Next(numbers:length-1,numbers:length+5)
    ? numbers[z]
  Catch ex As SystemException
    ? ex:GetType():FullName
    ? ex:Message
    ? ex:StackTrace
  End Try
