// file: 06_LogicalCompoundOperator.prg
// Example for the &= compound operator

Function Start() As Void
   Local l1 := True As Logic?
   Local l2 As Logic?
   
   ? l1 == Null
   ? l2 == Null
   // the null value propagates to l1
   l1 &= l2
   ? l1 == Null
