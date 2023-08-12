USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

USING TheDatabindingExample_16

BEGIN NAMESPACE TheDatabindingExample_16

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( Form1{} )
   
    RETURN
	
END NAMESPACE


