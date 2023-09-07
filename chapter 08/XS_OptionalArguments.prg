// file: XS_OptionalArguments.prg
// Optional arguments for method parameters
Using System.IO

Enum LevelType
   Harmless
   Normal
   Dangerous
End Enum

Function LogIt(Msg As String, Level := LevelType.Normal As LevelType) As Void
    var logPath := Path.Combine(Environment.CurrentDirectory, "Logit.log")
    Msg := ie"{Level}: {Msg}\n"
    File.AppendAllText(logPath, Msg)

Function Start() As Void
   LogIt("Application has just started normally")
   LogIt("Oh, no! Something went wrong. We are going to crash...", LevelType.Dangerous)
   LogIt(Level:=LevelType.Harmless, Msg:="Sorry, a false alarm:(")
