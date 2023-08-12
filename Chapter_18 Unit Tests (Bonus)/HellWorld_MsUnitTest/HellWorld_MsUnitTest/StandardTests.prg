// Note: Inside Visual Studio you should open the Test - Windows - Test Explorer Window
// From there you can run the tests and see which tests succeeded and which tests failed
//
Using System
Using System.Collections.Generic
Using System.Linq
Using System.Text
Using Microsoft.VisualStudio.TestTools.UnitTesting

Using HelloWorldLib

Begin Namespace HelloWorldLib_MsUnitTest
    
    [TestClass]	;
	Class StandardTests
		
		[TestMethod][Ignore];
        Method TestMethod1() As Void  Strict
            Var pw := HelperClass.GeneratePassword(10)
            Assert.IsTrue(pw:Length == 10)
            
		[TestMethod][Ignore];
        Method TestMethod2() As Void  Strict
            Var pw := HelperClass.GeneratePassword()
            Assert.IsTrue(pw:Length == 10)
            
		[TestMethod][Ignore];
        Method TestMethod3() As Void  Strict
            Var pw := HelperClass.GeneratePassword(3)
            Assert.IsTrue(pw:Length == 3)
            
            [TestMethod];
            [ExpectedException(Typeof(ArgumentException))];
        Method TestMethod4() As Void  Strict
            // Will throw an exception
            Var pw := HelperClass.GeneratePasswordEx(3)
            Assert.IsTrue(pw:Length == 3)
            
        [TestMethod];
        Method TestMethod5() As Void  Strict
            Var pw := HelperClass.GeneratePasswordEx(10, True)
            Var c := pw[1]
            Assert.IsFalse(Char.IsLetterOrDigit(c))
            
        [TestMethod];
        Method TestMethod6() As Void  Strict
            Var pw := HelperClass.GeneratePasswordEx(10, False)
            Var c := pw[1]
            Assert.IsTrue(Char.IsLetterOrDigit(c))
            
	 End Class
    
End Namespace
