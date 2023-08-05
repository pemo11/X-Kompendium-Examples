// File: StandardDbTests.prg

Using System
Using System.Collections.Generic
Using System.IO
Using System.Linq
Using System.Data
Using System.Data.SQLite

Using Microsoft.VisualStudio.TestTools.UnitTesting

Begin Namespace DALDB_Test
    
    [TestClass]	;
	Class TestClass
        Private DbPath As String 
            
        // Initialize the test database - has to be public
        [TestInitialize];
        Public Method SetupTestDb() As Void
            DbPath := Path.Combine(Environment.CurrentDirectory, "DALTestDb.db")
            
            
        // Check if the database file exists
	    [TestMethod];
        Method TestDatabasefileExists() As Void
            Var fileExists := File.Exists(DbPath)
		    Assert.IsTrue(fileExists)
            Return
            
        // Check if the cionnection can be opened
        [TestMethod];
        Method OpenConnection() As Void
            Var conString := i"Data Source=.\DALTestDb.db"
            Begin Using Var cn := SQLiteConnection{conString}
                cn:Open()
                Assert.IsTrue(cn:State == ConnectionState.Open)
            End Using
            Return

    End Class
    
END NAMESPACE
