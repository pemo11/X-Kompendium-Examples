// file: XS_Namespaces.prg
// An example for namespace definition and scope

Begin Namespace Ns1

   Class C1

   End Class

End Namespace


Begin Namespace Ns2

   Class C2

   End Class

End Namespace

Function Start() As Void
   var oC1 := C1{}
   ? oC1:GetType():FullName

