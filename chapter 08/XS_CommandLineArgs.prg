// file: XS_CommandLineArgs.prg
// Processing command line args

Function Start(Args As String[]) As Void
  ? i"Args: {Args.Length}"
  ForEach var Arg in Args
    ? i"Arg >> {Arg}"
  Next