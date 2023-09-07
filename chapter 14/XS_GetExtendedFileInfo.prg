// file: XS_GetExtendedFileInfo.prg
// Reading a text file with the FRead low level function
// compile with xsc .\FReadExamp1.prg /r:XSharp.Core.dll

DEFINE F_BLOCK := 128

Function Start() As Void
   var cBuffer := Space(F_BLOCK)
   var ptrHandle := FOpen("C:\Windows\Win.ini")
   // ref is important, otherwise the compiler complains with XS0208
   FReadText(ptrHandle, ref cBuffer, F_BLOCK)
   FClose(ptrHandle)
   ? cBuffer
 
