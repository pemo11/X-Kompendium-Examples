// file: 06_LateBinding.prg
// Example for late binding

Class XAction
   Internal Method Action1() As Void
      ? "This is Action 1"

   Internal Method Action2(Count As Int) As Void
       For Local i := 1 UpTo Count
           ? "This is Action 2"
       Next

End Class

Function Start() As Void
    // Won't compile
    // Local actionController As Object
    Local actionController As Usual
    // Local actionController As Dynamic
    actionController := XAction{}
    actionController:Action1()
    actionController:Action2(3)
