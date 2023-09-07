// file: XS_GenericListInterfaces.prg
// listing the interfaces of a generic list class

using System.Collections.Generic

Function Start() As Void
   Local l1 := List<String>{} As List<String>
   Local t := l1.GetType() As Type
   ? String{'=',80}
   ? "All interfaces of a generic List<T>"
   ? String{'=',80}
   ForEach var I in t:GetInterfaces()
     ? I.Name
   Next
