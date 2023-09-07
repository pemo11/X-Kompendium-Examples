// file: XS_ShowListeners.prg
// Shows all the available listeners
Using System.Diagnostics

Function Start() As Void
   ForEach var listener in Debug.Listeners
    Console.WriteLine(i"Listener={((TraceListener)listener).Name}")
   Next
   Debug.WriteLine("*** This is a debug message ***")
