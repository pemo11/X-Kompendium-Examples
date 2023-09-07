// File: NoWorkerClass.prg

Using System
Using System.ComponentModel
Using System.Drawing
Using System.IO
Using System.Windows.Forms

BEGIN NAMESPACE BackgroundWorker_Example

	/// <summary>
    /// The NoWorkerClass class.
    /// </summary>
	Class NoWorkerClass
        Private Path As String
        Private Form As MainForm
        Private Files As FileInfo[]
            
        Constructor (Path As String, Form As MainForm)
            Self:Path := Path
            Self:Form := Form
            
        Internal Method StartScan() As Void
            var dir := DirectoryInfo{Self:Path}
            Self:Files := dir:GetFiles("*.png", SearchOption.AllDirectories)
            // You have to use BeginInvoke
            Self:Form:progressBar1:BeginInvoke(MethodInvoker{Delegate{Self:Form:ProgressBar1:Maximum := Files:Length}})
            For Local i := 1 UpTo Self:Files:Length - 1
                System.Threading.Thread.Sleep(500)
                Self:Form:liFiles:Items:Add(Self:Files[i]:Name)
                Self:Form:liFiles:SelectedIndex := Self:Form:liFiles:Items:Count - 1
                // Without (Double) pValue will be 0 all the time
                var pValue := ((Double)i / Self:Files:Length) * 100
                Self:Form:progressBar1:Value :=(Int)pValue
                try
                    if Self:Files[i]:Length < 1E6
                        // Do not use Begin Using !
                        var img := Image.FromFile(Self:Files[i]:FullName)
                        System.Diagnostics.Debug.WriteLine(Self:Files[i]:FullName)
                        Self:Form:picturebox1:Image := img
                    Else
                        Self:Form:picturebox1:Image := Null
                    EndIf
                catch
                    Nop    
                End Try
            Next
            Return

    
	END CLASS
END NAMESPACE
