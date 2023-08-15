// file: 09_AScanExample1.prg
// Searching a String array with AScan
// compile with xsc .\09_AscanExample1.prg /dialect:VO /r:XSharp.Core.dll /r:XSharp.RT.dll                               

Function Start() As Void
    Local aTopics := {"SG01","SG02  ", "SG03"} As Array
    // SG02 will be found despite the blank at the end
    Local strTopic := "SG02" As String
    Local Pos := (Int) AScan(aTopics, {|aVal|aVal=strTopic}) As Int
    ? Pos