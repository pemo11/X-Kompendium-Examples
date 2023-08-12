// file: 15_AwaitExample1.prg
// A first simple example for await and async

using System
using System.Threading

Class ComponentA

   Override Method ToString() As String
      Return "This is Component A"
      
End Class

Class ComponentB

   Override Method ToString() As String
      Return "This is Component B"
      
End Class

Class ComponentC

   Override Method ToString() As String
      Return "This is Component C"
      
End Class

Function CreateComponentA() As ComponentA
    ? "Creating Component A"
    Thread.Sleep(500)
    Return ComponentA{}

Function CreateComponentB() As ComponentB
    ? "Creating Component B"
    Thread.Sleep(800)
    Return ComponentB{}
    
Function CreateComponentC() As ComponentC
    ? "Creating Component C"
    Thread.Sleep(1000)
    Return ComponentC{}

Function Start() As Void
    var startTime := DateTime.Now
    CreateComponentA()
    CreateComponentB()
    CreateComponentC()
    ? i"Total running time: {(DateTime.Now-startTime).TotalSeconds.ToString(""f2"")}s"