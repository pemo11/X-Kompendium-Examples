﻿USING System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

USING WebserviceExample

BEGIN NAMESPACE WebserviceExample

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


