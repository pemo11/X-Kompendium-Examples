USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

BEGIN NAMESPACE BeginInvokeExample

    [STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


