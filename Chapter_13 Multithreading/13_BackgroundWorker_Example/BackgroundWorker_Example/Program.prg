USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

USING BackgroundWorker_Example

BEGIN NAMESPACE BackgroundWorker_Example

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


