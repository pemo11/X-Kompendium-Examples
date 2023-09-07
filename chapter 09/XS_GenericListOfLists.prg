// file: XS_GenericListOfLists.prg
// Example for generic list that contains other lists

using System.Collections.Generic

Function Start() As Void
  var movies := List<List<String>>{}{;
    List<String>{}{ "Michael J. Fox", "Christopher Lloyd", "Claudia Wells"},;
    List<String>{}{ "Michael J. Fox", "Christopher Lloyd", "Elisabeth Shue"};
  }

  ?i"In Back to the future part 2 Jennifer Parker is played by {movies[1][2]}"