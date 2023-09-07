begin namespace BeginInvokeExample

    partial class MainForm

        /// <summary>
        /// Required designer variable.
        /// </summary>
        private components := NULL as System.ComponentModel.IContainer

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override method Dispose(disposing as logic) as void  STRICT
            if (disposing .AND. (components != null))
                components:Dispose()
            endif
            Super:Dispose(disposing)
			return
        end method
        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private method InitializeComponent() as void  STRICT
            self:components := System.ComponentModel.Container{}
            self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            self:Text := "Form1"
            
            SELF:bnStart := System.Windows.Forms.Button{}
            SELF:listBox1 := System.Windows.Forms.ListBox{}
            SELF:SuspendLayout()
            
            // 
            // bnStart
            // 
            SELF:bnStart:Location := System.Drawing.Point{76, 12}
            SELF:bnStart:Name := "bnStart"
            SELF:bnStart:Size := System.Drawing.Size{114, 24}
            SELF:bnStart:TabIndex := 0
            SELF:bnStart:Text := "&Start"
            SELF:bnStart:UseVisualStyleBackColor := true
            SELF:bnStart:Click += System.EventHandler{ SELF, @bnStart_Click() }
            
            // 
            // listBox1
            // 
            Self:listbox1:Font := System.Drawing.Font{Self:Font:FontFamily, 20}
            SELF:listBox1:FormattingEnabled := true
            SELF:listBox1:ItemHeight := 20
            SELF:listBox1:Location := System.Drawing.Point{76, 50}
            SELF:listBox1:Name := "listBox1"
            SELF:listBox1:Size := System.Drawing.Size{120, 164}
            SELF:listBox1:TabIndex := 1
            // 
            // MainForm
            // 
            SELF:ClientSize := System.Drawing.Size{284, 261}
            SELF:Controls:Add(SELF:listBox1)
            SELF:Controls:Add(SELF:bnStart)
            SELF:Font := System.Drawing.Font{"Arial Narrow", 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((BYTE)(0))}
            SELF:Name := "MainForm"
            SELF:Text := "Example for BeginInvoke"
            SELF:ResumeLayout(false)
			return
        end method
        #endregion
    end class

END NAMESPACE
