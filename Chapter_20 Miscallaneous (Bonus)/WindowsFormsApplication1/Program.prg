USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

USING WindowsFormsApplication1

BEGIN NAMESPACE WindowsFormsApplication1

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( Form1{} )
   
    RETURN
	
END NAMESPACE


