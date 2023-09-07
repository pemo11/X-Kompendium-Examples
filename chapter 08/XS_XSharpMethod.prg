// file: XS_XSharpMethod.prg
// Example for a method with a default parameter

using System
using System.Threading

Class Helper

  Static Public Method getPassword(Strength := 8 As Int) As String
      Local pw := "" As String
      For var i := 0 UpTo Strength
         pw += ((char)((Random{DateTime.Now.Millisecond}).Next(65,91))):ToString()
         Thread.Sleep(100)
      Next
      Return pw
    End Method
    
End Class

Function Start() As Void
   ? Helper.getPassword()