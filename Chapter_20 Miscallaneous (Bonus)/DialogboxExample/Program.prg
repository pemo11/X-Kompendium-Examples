// File: Program.prg
// The DialogExample for the X# Kompendium

Using System
USING System.Collections.Generic
USING System.Linq
USING System.Text
USING System.Windows.Forms

USING DialogboxExample

BEGIN NAMESPACE DialogboxExample

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


