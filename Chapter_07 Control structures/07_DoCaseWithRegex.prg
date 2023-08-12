// file: 07_DoCaseWithRegex.prg
// Using a regex with do case

using System.Text.RegularExpressions
using System.Collections.Generic

Function Start() As Void
  Var serNumbers := List<String>{}{;
      "1234-2022-91bE",;
      "5454-2021-A6bC",;
      "4323-2022-69bD",;
      "9843-2022-42bA";
  }
  ForEach Var serNumber In serNumbers
      Do Case
          Case Regex.Match(serNumber, "\d+-(\d+)-\d+"):Groups[1]:Value == DateTime.Now:ToString("yyyy")
              ? i"*** Match mit {serNumber}"
          Otherwise
              ? i"!!! Kein Match mit {serNumber}"
      End Case
  Next