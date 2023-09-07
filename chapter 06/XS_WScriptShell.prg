// file: XS_WScriptShell.prg
// using the COM object WScript.Shell

Function Start() As Void
  Local progId := "WScript.Shell" As String
  Local shellType := Type.GetTypeFromProgId(progId) As Type
  Local shell := Activator.CreateInstance(shellType) As Dynamic
  shell:Popup("Yes, we can!",3,"Info",48)

