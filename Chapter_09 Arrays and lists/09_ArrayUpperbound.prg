// file: 09_ArrayUpperbound.prg
// Getting the dimensions of a multi dimensional array

// The upper bound of an Array can be non-zero in rare circumstances
Function Start() As Void
   // Array with int and two dimensions with 3 elements
   // The first dimension starts with 0, the second with 1
   var Numbers := Array.CreateInstance(typeof(Int), <Int>{3,3}, <Int>{0,1})
   For Local dim := 0 UpTo Numbers:Rank - 1
     // PM: Not sure why Numbers:GetLowerBound() does not work
     ? i"LowerBound of Dimension {dim}: {Numbers.GetLowerBound(dim)}"
     ? i"UpperBound of Dimension {dim}: {Numbers.GetUpperBound(dim)}"
   Next
