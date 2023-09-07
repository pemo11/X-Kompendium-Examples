// file: XS_ArraySorting1.prg
// Sorting a .Net Array - Part 1

Function Start() as void
  Local values := Decimal[]{3} As Decimal[]
  values[1] := (decimal)233.434
  values[2] := (decimal)22 / 7
  values[3] := 567.89M

  Array.Sort(values)

  ForEach var v in values
   ? v
  Next
