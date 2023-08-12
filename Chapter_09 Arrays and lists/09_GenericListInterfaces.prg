// file: 09_GenericListInterfaces.prg
// Listing the interfaces a generic list class implements

using System.Collections.Generic

Function Start() As Void
   Local l1 := List<String>{} As List<String>
   Local t := l1.GetType() As Type
   ? "*** The interfaces of List<String> ***"
   ForEach var I in t:GetInterfaces()
     ? I.Name
   Next
