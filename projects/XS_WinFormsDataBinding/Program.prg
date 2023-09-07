// File: Program.prg

Using System
Using System.Collections.Generic
Using System.Linq
Using System.Text
Using System.Windows.Forms

Begin Namespace WinFormsDataBinding_16

[STAThread] ;
	FUNCTION Start() AS VOID
    
    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault( FALSE )
    Application.Run( MainForm{} )
   
    RETURN
	
END NAMESPACE


