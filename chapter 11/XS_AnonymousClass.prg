// file: XS_AnonymousClass.prg
// Another example for an anonymous class

using System
using System.Linq

Function Start() As void
  var Months := From m in Enumerable.Range(1,12) Select Class { Month := DateTime{2022,m,1}.ToString("MMMM"),Days := DateTime.DaysInMonth(2022,m) }
  ForEach var m in Months
   ? m
  Next
