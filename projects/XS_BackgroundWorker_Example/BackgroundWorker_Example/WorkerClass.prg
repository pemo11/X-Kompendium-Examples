// File: WorkerClass.prg

USING System
Using System.ComponentModel
Using System.Drawing
Using System.IO
Using System.Windows.Forms

BEGIN NAMESPACE BackgroundWorker_Example

	/// <summary>
    /// The WorkerClass class.
    /// </summary>
	CLASS WorkerClass
        Internal Worker As BackgroundWorker
        Private Path As String
        Private Form As MainForm
        Private Files As FileInfo[]
            
        Internal Method StartScan(Path As String, Form As MainForm) As Void
            Self:Path := Path
            Self:Form := Form
            Self:Worker := BackgroundWorker{}   
            Self:Worker:WorkerReportsProgress := True
            Self:Worker:WorkerSupportsCancellation := True
            Self:Worker:DoWork += DoWorkEventHandler{WorkerDoWork}
            Self:Worker:RunWorkerCompleted += RunWorkerCompletedEventHandler{WorkerCompleted}
            Self:Worker:ProgressChanged += ProgressChangedEventHandler{WorkerProgressChanged}
            Self:Worker:RunWorkerAsync()
            
        Internal Method CancelOperation() As Void
            Self:Worker:CancelAsync()
            
        Private Method WorkerDoWork(Sender As Object, e As EventArgs) As Void
            var dir := DirectoryInfo{Self:Path}
            Self:Files := dir:GetFiles("*.png", SearchOption.AllDirectories)
            // Not possible in this place - you have to use BeginInvoke too
            // Self:Form:ProgressBar1:Maximum := Self:Files:Length
            Self:Form:progressBar1:BeginInvoke(MethodInvoker{Delegate{SetProgressBarMax(Files:Length)}})
            For Local i := 1 UpTo Self:Files:Length - 1
                // Cancel pending?
                if Self:Worker:CancellationPending
                    Return
                EndIf
                Self:Worker:ReportProgress(i)
                System.Threading.Thread.Sleep(500)
            Next
            
        Private Method SetProgressBarMax(Value As Int) As Void
            Self:Form:progressBar1:Minimum := 0
            Self:Form:progressBar1:Maximum := Value
            
        Private Method WorkerCompleted(Sender As Object, e As EventArgs) As Void
            Self:Form:progressBar1:Value := 0
            Messagebox.Show("Da Worker has finished!", "Info")
            
        Private Method WorkerProgressChanged(Sender As Object, e As ProgressChangedEventArgs) As Void
            var fileIndex := e:ProgressPercentage
            Self:Form:liFiles:Items:Add(Self:Files[fileIndex]:Name)
            Self:Form:liFiles:SelectedIndex := Self:Form:liFiles:Items:Count - 1
            // Without (Double) pValue will be 0 all the time
            var pValue := ((Double)fileIndex / Self:Files:Length) * 100
            System.Diagnostics.Debug.WriteLine(pValue)
            Self:Form:progressBar1:Value :=(Int)pValue
            try
                if Self:Files[fileIndex]:Length < 1E6
                    // Do not use Begin Using !
                    var img := Image.FromFile(Self:Files[fileIndex]:FullName)
                    System.Diagnostics.Debug.WriteLine(Self:Files[fileIndex]:FullName)
                    Self:Form:picturebox1:Image := img
                Else
                    Self:Form:picturebox1:Image := Null
                EndIf
            catch
                Nop    
            End Try
    END CLASS
    
END NAMESPACE
