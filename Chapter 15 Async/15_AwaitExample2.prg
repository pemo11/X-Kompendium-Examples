// file: 15_AwaitExample2.prg
// The second simple example for await and async

using System
using System.Threading
using System.Threading.Tasks

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

Async Function CreateComponentA() As Task<ComponentA>
    ? "Creating Component A"
    Thread.Sleep(500)
    Return ComponentA{}

Async Function CreateComponentB() As Task<ComponentB>
    ? "Creating Component B"
    Thread.Sleep(800)
    Return ComponentB{}
    
Async Function CreateComponentC() As Task<ComponentC>
    ? "Creating Component C"
    Thread.Sleep(1000)
    Return ComponentC{}

Async Function StartComponents() As Void
    var startTime := DateTime.Now
    Await CreateComponentA()
    Await CreateComponentB()
    Await CreateComponentC()
    ? i"Total running time: {(DateTime.Now-startTime).TotalSeconds.ToString(""f2"")}s"

Function Start() As Void
    StartComponents()