// file: XS_ConvertText2Objects.prg
// Using LINQ to convert a Csv file into objects

Using System.IO
Using System.Linq

Class Album
  Property Title As String Auto
  Property Interpret As String Auto
  Property Year As Int Auto
  Override Method ToString() As String
    Return i"Title: {Self:Title} Interpret: {Self:Interpret} Year: {Self:Year}"

End Class

Function Start() As Void
   var txtPath := Path.Combine(Environment.CurrentDirectory, "Albumtitles.txt")
   // really "cool" how easy it is to skip first line with the header names
   var albums := from line in File.ReadAllLines(txtPath):Skip(1) Select Album{}{title:=line:split(c",")[1],;
                                                                              interpret:=line:split(c",")[2],;
                                                                              year:=Int32.Parse(line:split(c",")[3])}
   ForEach var album in albums
    ? album
   Next