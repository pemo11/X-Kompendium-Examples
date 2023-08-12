// file: 06_DateTimeConvert1.prg
// Converting strings to a DateTime

Function Start() As Void
   Local dateStr := "4.7.23" As String
   var d := DateTime.Parse(dateStr)
   // Use ToString() with default formating
   ? d
   // Now with a specific time
   dateStr := "4. 7 2023 8:23"
   d := DateTime.Parse(dateStr)
   ? d
   // Parse is flexible
   dateStr := "4. 7 2023"
   d := DateTime.Parse(dateStr)
   ? d
   // Parse is really flexible
   dateStr := "4 july"
   d := DateTime.Parse(dateStr)
   ? d

   

