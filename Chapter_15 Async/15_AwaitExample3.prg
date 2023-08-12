// file: 15_AwaitExample3.prg
// The third simple example for await and async

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
    await Task.Delay(TimeSpan.FromMilliSeconds(500))
    Return ComponentA{}

Async Function CreateComponentB() As Task<ComponentB>
    ? "Creating Component B"
    await Task.Delay(TimeSpan.FromMilliSeconds(800))
    Return ComponentB{}
    
Async Function CreateComponentC() As Task<ComponentC>
    ? "Creating Component C"
    await Task.Delay(TimeSpan.FromMilliSeconds(1000))
    Return ComponentC{}

Async Function StartComponents() As Void
    Await CreateComponentA()
    Await CreateComponentB()
    Await CreateComponentC()
    
Function Start() As Void
    var startTime := DateTime.Now
    StartComponents()
    ? i"Total running time: {(DateTime.Now-startTime).TotalSeconds.ToString(""f2"")}s"
    Console.ReadLine()
