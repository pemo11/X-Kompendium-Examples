// file: 04_ArraxIndex.prg
// Usually the array index stars with 1 but it can be start with 0 as well

Function Start() as Void
  Var numbers := <Byte>{11,22,33,44}
  For Local i := 1 UpTo(numbers:Length)
    ? numbers[i]
  Next
