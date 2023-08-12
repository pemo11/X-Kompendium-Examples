// file: 16_AccessCreateDbWithTable.prg
// Create a Mdb file with a table using ADOX COM
// compile as 32 bit application xsc ./16_AccessCreateDbWithTable.prg -platform:x86

using System.Data.OleDb

// why not use a constant today?
Define adVarChar := 202 

Function Start() As Void
    var mdbPath := "Test1234.mdb"
    var progId := "ADOX.Catalog"
    var shellType := Type.GetTypeFromProgId(progId)
    Local adxCat := Activator.CreateInstance(shellType) As Dynamic
    var cnStr := i"Provider=Microsoft.Jet.OLEDB.4.0;Data Source={mdbPath};Jet OLEDB:Engine Type=5"
    adxCat:Create(CnStr)

    progId := "ADOX.Table"
    shellType := Type.GetTypeFromProgId(progId)
    Local adxTable := Activator.CreateInstance(shellType) As Dynamic    

    adxTable:Name := "Messwerte"
    var FieldCount := 100
    For Local i := 0 Upto FieldCount
        adxTable:Columns:Append(i"Value{i}", adVarChar, 100)
    Next

    var ret := adxCat:Tables.Append(adxTable)
    ? ret

    var dbCon := adxCat:ActiveConnection
    if dbCon != null
      dbCon:Close()
    EndIf


    ? "Order executed..."