// file: 16_ListDataProviders
// List all registered data providers

using System.Data
using System.Data.Common

Function Start() as Void
   var taProv := DbProviderFactories.GetFactoryClasses()
   foreach row as DataRow in taProv:rows
     ? i"Name={row[""name""]} Invariant Name={row[""invariantname""]}"
   next