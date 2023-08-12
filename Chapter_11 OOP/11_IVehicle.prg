// file: 11_IVehicle.prg
// An example for an Interface definition
// For compiling with xsc use /t:library

/// <summary>
/// The IVehicle interface
/// </summary>
Interface IVehicle
    Public Property Id As String Auto
    Public Property Description As String Auto
     Public Method Register(RegisterDate As DateTime) As Int
End Interface
