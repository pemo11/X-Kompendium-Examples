USING System
USING System.Collections.Generic
USING System.ComponentModel
USING System.Data
USING System.Drawing
USING System.Linq

USING System.Text
using System.Threading.Tasks

USING System.Windows.Forms

BEGIN NAMESPACE _13_FileSystemWatcher

    PUBLIC PARTIAL CLASS Form1 INHERIT System.Windows.Forms.Form

        PUBLIC CONSTRUCTOR()   STRICT//Form1
            InitializeComponent()
            RETURN
            End Constructor
            
            /*
                    Private fsw As FileSystemWatcher
           // Setup a FileSystemWatcher
            fsw := FileSystemWatcher{logPath}
            fsw:EnableRaisingEvents := True
            // fsw:NotifyFilter := NotifyFilters.LastWrite
            // fsw:Filter := logFileName
            fsw:Changed += FileSystemEventHandler{OnChanged}
            // fsw:Changed += {sender, e => 
            //     Debug.WriteLine("Changed!!!")
            //     lbLog:BeginInvoke(MethodInvoker{{ => 
            //         lbLog:Items:Add(GetLastLine(e:FullPath))
            //     }})
            // }
            fsw:Error += {sender, e => 
                Debug.WriteLine("Error!!!")
                lbLog:Items:Add(i"Error: {e.GetException().GetType().Name}")
            }
        Private Method OnChanged(sender As Object, e As FileSystemEventArgs) As Void
            Debug.WriteLine("Changed!!!")
            lbLog:BeginInvoke(MethodInvoker{{ => 
                 // lbLog:Items:Add(GetLastLine(e:FullPath))
            }})
            
 */
            
    END CLASS
END NAMESPACE
