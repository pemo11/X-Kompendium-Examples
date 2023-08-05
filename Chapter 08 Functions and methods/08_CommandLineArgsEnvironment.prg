// file: 08_CommandLineArgsEnvironment.prg
// Processing command line args with the Environment class

Function Start() As Void
  var args := Environment.GetCommandLineArgs()
  ? i"Args: {args.Length}"
  ForEach var Arg in args
    ? i"Arg >> {Arg}"
  Next