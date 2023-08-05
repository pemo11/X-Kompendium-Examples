// file: 03_DbQueryCS.cs

using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;

internal class Book
{
    internal string Title {get; set;}
}

class Application
{
    static void Main()
    {
      Console.WriteLine("*** This is C# ***");
      var books = new List<Book>();
      var cnStr = "Data Source=./BookLib.db3";
      SQLiteConnection cn = null;
      try
      {
        cn = new SQLiteConnection(cnStr);
        cn.Open();
        var cmd = cn.CreateCommand();
        cmd.CommandText = "Select * From Book";
        var dr = cmd.ExecuteReader();
        while (dr.Read())
        {
         books.Add(new Book(){Title = dr.GetString(dr.GetOrdinal("Title"))});
        }
      }
      catch(SystemException ex)
      {
        Console.WriteLine($"Error: {ex.Message}");
      }
      finally
      {
        if(cn != null)
          cn.Close();
      }
      foreach(var book in books)
      {
         Console.WriteLine($"Title: {book.Title}");
      }
   }
}