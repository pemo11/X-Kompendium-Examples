USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
Using System.Windows.Forms

Begin Namespace ExceptionProject

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


