USING System
USING System.IO

USING System.Windows.Forms

BEGIN NAMESPACE BackgroundWorker_Example

    PUBLIC PARTIAL CLASS MainForm Inherit Form
        Private Worker As WorkerClass
        Private NoWorker As NoWorkerClass
            
        PUBLIC CONSTRUCTOR() Strict
            InitializeComponent()
            bnCancel:Enabled := False
            cbBackgroundWorker:Checked := True
            tbPath:Text := Environment.GetFolderPath(Environment.SpecialFolder.MyPictures)
            RETURN
            END CONSTRUCTOR
        
        PRIVATE METHOD bnStart_Click(sender AS Object, e AS EventArgs) AS VOID STRICT
            var dirPath := tbPath:Text  
            bnCancel:Enabled := True
            if !Directory.Exists(dirPath)
                Messagebox.Show(i"{dirPath} does not exist!", "Error")
            else
                Self:liFiles:Items:Clear()
                if cbBackgroundWorker:Checked
                    worker := WorkerClass{}
                    worker:StartScan(dirPath, Self)
                Else
                    noWorker := NoWorkerClass{dirPath, Self}
                    noWorker:StartScan()
                EndIf
            EndIf
            RETURN
        END METHOD
        
        PRIVATE METHOD bnCancel_Click(sender AS Object, e AS EventArgs) AS VOID
            if cbBackgroundWorker:Checked 
                Self:Worker:CancelOperation()            
            endif
            RETURN
        END METHOD
    END CLASS 
END NAMESPACE
