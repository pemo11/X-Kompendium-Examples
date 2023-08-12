// file: 11_BeginUsing.prg
// Example for Begin using - class has to implement IDisposable

Class C1 Implements IDisposable

   Method Dispose() As Void
     ? "Calling dispose..."


End Class

Function Start() As Void

   Begin Using var oC1 := C1{}
      ? "Inside Begin using..."
   End Using
   ? "End of function.."
