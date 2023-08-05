// file: 15_AwaitExample4.prg
// The fourth simple example for await and async
using System
using System.Threading
using System.Threading.Tasks

Interface IComponent

End Interface


Class ComponentA Implements IComponent

   Override Method ToString() As String
      Return "This is Component A"
      
End Class

Class ComponentB Implements IComponent

   Override Method ToString() As String
      Return "This is Component B"
      
End Class

Class ComponentC Implements IComponent

   Override Method ToString() As String
      Return "This is Component C"
      
End Class

Async Function CreateComponentA() As Task<IComponent>
    ? "Creating Component A"
    await Task.Delay(TimeSpan.FromMilliSeconds(500))
    Return ComponentA{}

Async Function CreateComponentB() As Task<IComponent>
    ? "Creating Component B"
    await Task.Delay(TimeSpan.FromMilliSeconds(800))
    Return ComponentB{}
    
Async Function CreateComponentC() As Task<IComponent>
    ? "Creating Component C"
    await Task.Delay(TimeSpan.FromMilliSeconds(1000))
    Return ComponentC{}

Function Start() As Void
    var startTime := DateTime.Now
    // Important - the Array have to be of type Task<T>
    var allTasks := Task<IComponent>[]{3}
    allTasks[1] := Task.Run({ => CreateComponentA() })
    allTasks[2] := Task.Run({ => CreateComponentB() })
    allTasks[3] := Task.Run({ => CreateComponentC() })
    var t := task.WhenAll(allTasks)
    t:Wait()
    ? i"Total running time: {(DateTime.Now-startTime).TotalSeconds.ToString(""f2"")}s"
    ForEach var ta in allTasks
      ? ta:Result
    Next
