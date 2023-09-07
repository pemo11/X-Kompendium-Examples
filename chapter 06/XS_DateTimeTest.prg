// file: XS_DateTimeTest.prg
// Testing for a valid datetime with TryParse

Function Start() As Void
   var testDates := <String>{"1.4.2000", "29.2.2001","3. Jan","01-11-2023", "4 May 2012"}
   Local dateValue As DateTime
   ForEach var testDate in testDates
     // there is no DateTime?.TryParse
     If DateTime.TryParse(testDate, out dateValue) 
        ? dateValue
     Else
       ? i"{testDate} is not a valid DateTime (sorry)"
     EndIf
   Next