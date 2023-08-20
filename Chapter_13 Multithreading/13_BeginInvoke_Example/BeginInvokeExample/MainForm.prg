USING System
USING System.ComponentModel
USING System.Drawing
USING System.Threading
USING System.Windows.Forms

BEGIN NAMESPACE BeginInvokeExample

    PUBLIC PARTIAL CLASS MainForm Inherit Form
        PRIVATE bnStart AS System.Windows.Forms.Button
        PRIVATE listBox1 AS System.Windows.Forms.ListBox

        PUBLIC CONSTRUCTOR() STRICT
            InitializeComponent()
            RETURN
        END CONSTRUCTOR

        Private Method UpdateList() As Void
            For Local i := 1 UpTo 10
                listbox1:BeginInvoke(MethodInvoker{Delegate{
                    listBox1:Items:Add(i)
                    listBox1:SelectedIndex := listBox1:Items:Count - 1
                }})
                // listBox1:Items:Add(i)
                Thread.Sleep(500)
            Next
            Return

        PRIVATE METHOD bnStart_Click(sender AS Object, e AS EventArgs) AS VOID
          var tStart := ThreadStart{UpdateList}
          var t := Thread{tStart}
          t:Start()
            RETURN
        END METHOD
    END CLASS 
END NAMESPACE
