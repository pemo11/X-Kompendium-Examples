// file: 06_CreateObject.prg
// Create a COM object with CreateObjectEx

// Does not work so far
Function Start() As Void
  Local wshShell := CreateObject("WScript.Shell", "", "") As Dynamic
  // ? wshShell
  var oExec := wshShell:Exec("calculator")
  ? oExec:Status
