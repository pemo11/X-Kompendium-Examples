// file: 14_ReaderWriterLock.prg
// Example for using a ReaderWriterLock

using System.IO
Using System.Threading

Global _ReadWriteLock := ReaderWriterLockSlim{} As ReaderWriterLockSlim

/// <summary>
/// Write text with a write lock
/// </summary>
Function GenerateText() As String
  Local tmpText := "" As String
  tmpText += "Lorem Ipsum dolores" + Chr(10)
  tmpText += "Allea ajacta est" + Chr(10)
  tmpText += "quid bono"
  Return tmpText

/// <summary>
/// Read text from a file
/// </summary>
/// <param name="Pfad"></param>
/// <returns></returns>
Function ReadText(Pfad As String) As String
    Begin Using Var sr := File.OpenText(Pfad)
        Return sr:ReadToEnd()
    End Using

/// <summary>
/// Write text with a write lock
/// </summary>
Function WriteText() As Void
    _ReadWriteLock:EnterWriteLock()
    Local tmpPfad := Path.GetTempFileName() As String
    Try
        Begin Using Var sw := StreamWriter{tmpPfad}
            sw:Write(GenerateText())
        End Using
        ? i"{tmpPfad} was written with {FileInfo{tmpPfad}.Length} Bytes"
        ? ReadText(tmpPfad)
    Catch Ex As SystemException
        ? i"Error: {ex:Message}"
    Finally
        _ReadWriteLock:ExitWriteLock()
    End Try

Function Start() As Void
    WriteText()
    
