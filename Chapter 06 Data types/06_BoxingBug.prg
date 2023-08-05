// File: 06_BoxingBug.prg
// Shows a subtle "bug" where boxing is the cause
using System.Collections.Generic

Struct Person
  Property Name As String Auto
  Override Method ToString() As String
   Return Name
End Struct

Function Start() As Void
  var personList := List<Person>{}
  var p := Person{}{Name := "Old Guy"}
  personList:Add(p)

  // Try to change the name
  var p2 := personList[0]
  // Would work of course if Person was a reference type
  p2:Name := "New Guy"

  // Bug: Writes the old name because unboxing results to a value type copy
  ? personList[0]:ToString()
