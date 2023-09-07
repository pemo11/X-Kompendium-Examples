// file: XS_BeginUsingWithClassVariable.prg
// Begin Using with a class variable
using System
using System.IO

Class Test
   Private Sw As StreamWriter

   Method Save() As Void
      Begin Using Sw := StreamWriter{"Test.dat"}
        Sw:WriteLine("Hello, again!")
      End Using
      ? "*** File written ***"
      Return

End Class

Function Start() As Void
   var t1 := Test{}
   t1:Save()
