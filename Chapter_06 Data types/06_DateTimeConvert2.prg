// file: 06_DateTimeConvert2.prg
// Converting a DateTime to a string

Function Start() As Void
   Local dateStr := "4.7.23" As String
   ? DateTime.Parse(dateStr):ToShortDateString()
   ? DateTime.Parse(dateStr):ToLongDateString()
   ? DateTime.Parse(dateStr):ToString("dd-MM-yyyy")
   // Now in French
   var ciFr := System.Globalization.CultureInfo{"fr-FR"}
   ? DateTime.Parse(dateStr):ToString("D", ciFr)

