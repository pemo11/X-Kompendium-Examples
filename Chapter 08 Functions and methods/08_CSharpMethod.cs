// file: 08_CSharpMethods.cs
// An example for a method in C#
using System;
using System.Threading;

class helper
{
  static private string getPassword(int strength=8) {
      string pw = "";
      for(int i=0;i<strength;i++) {
         pw += (char)((new Random(DateTime.Now.Millisecond)).Next(65,91));
         Thread.Sleep(100);
      }
      return pw;
  }
}
