﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.13.2.2
//     Timestamp      : 15.03.2023 20:12:35
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace DebugWithListeners

    Public Partial Class MainForm

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private tableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
        Private groupBox1 As System.Windows.Forms.GroupBox
        Private groupBox2 As System.Windows.Forms.GroupBox
        Private bnGenerateDebug As System.Windows.Forms.Button
        Private lbLog As System.Windows.Forms.ListBox
        Private bnClearLog As System.Windows.Forms.Button

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        Protected Override Method Dispose(disposing As Logic) As Void  Strict

            If (disposing .AND. (components != null))
                components:Dispose()
            Endif
            Super:Dispose(disposing)
			Return
        End Method
        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        Private Method InitializeComponent() As Void Strict
            Self:tableLayoutPanel1 := System.Windows.Forms.TableLayoutPanel{}
            Self:groupBox1 := System.Windows.Forms.GroupBox{}
            Self:bnClearLog := System.Windows.Forms.Button{}
            Self:groupBox2 := System.Windows.Forms.GroupBox{}
            Self:bnGenerateDebug := System.Windows.Forms.Button{}
            Self:lbLog := System.Windows.Forms.ListBox{}
            Self:tableLayoutPanel1:SuspendLayout()
            Self:groupBox1:SuspendLayout()
            Self:groupBox2:SuspendLayout()
            Self:SuspendLayout()
            // 
            // tableLayoutPanel1
            // 
            Self:tableLayoutPanel1:ColumnCount := 2
            Self:tableLayoutPanel1:ColumnStyles:Add(System.Windows.Forms.ColumnStyle{System.Windows.Forms.SizeType.Percent, 50})
            Self:tableLayoutPanel1:ColumnStyles:Add(System.Windows.Forms.ColumnStyle{System.Windows.Forms.SizeType.Percent, 50})
            Self:tableLayoutPanel1:Controls:Add(Self:groupBox1, 1, 0)
            Self:tableLayoutPanel1:Controls:Add(Self:groupBox2, 0, 0)
            Self:tableLayoutPanel1:Controls:Add(Self:lbLog, 0, 1)
            Self:tableLayoutPanel1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:tableLayoutPanel1:Location := System.Drawing.Point{0, 0}
            Self:tableLayoutPanel1:Name := "tableLayoutPanel1"
            Self:tableLayoutPanel1:RowCount := 2
            Self:tableLayoutPanel1:RowStyles:Add(System.Windows.Forms.RowStyle{System.Windows.Forms.SizeType.Percent, 44.8742752})
            Self:tableLayoutPanel1:RowStyles:Add(System.Windows.Forms.RowStyle{System.Windows.Forms.SizeType.Percent, 55.1257248})
            Self:tableLayoutPanel1:Size := System.Drawing.Size{687, 517}
            Self:tableLayoutPanel1:TabIndex := 0
            // 
            // groupBox1
            // 
            Self:groupBox1:BackColor := System.Drawing.Color.FromArgb(((Int)(((Byte)(255)))), ((Int)(((Byte)(192)))), ((Int)(((Byte)(255)))))
            Self:groupBox1:Controls:Add(Self:bnClearLog)
            Self:groupBox1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:groupBox1:Location := System.Drawing.Point{346, 3}
            Self:groupBox1:Name := "groupBox1"
            Self:groupBox1:Size := System.Drawing.Size{338, 226}
            Self:groupBox1:TabIndex := 1
            Self:groupBox1:TabStop := false
            // 
            // bnClearLog
            // 
            Self:bnClearLog:Location := System.Drawing.Point{19, 78}
            Self:bnClearLog:Name := "bnClearLog"
            Self:bnClearLog:Size := System.Drawing.Size{290, 49}
            Self:bnClearLog:TabIndex := 1
            Self:bnClearLog:Text := "Clear log"
            Self:bnClearLog:UseVisualStyleBackColor := true
            Self:bnClearLog:Click += System.EventHandler{ Self, @bnClearLog_Click() }
            // 
            // groupBox2
            // 
            Self:groupBox2:BackColor := System.Drawing.Color.FromArgb(((Int)(((Byte)(192)))), ((Int)(((Byte)(255)))), ((Int)(((Byte)(192)))))
            Self:groupBox2:Controls:Add(Self:bnGenerateDebug)
            Self:groupBox2:Dock := System.Windows.Forms.DockStyle.Fill
            Self:groupBox2:Location := System.Drawing.Point{3, 3}
            Self:groupBox2:Name := "groupBox2"
            Self:groupBox2:Size := System.Drawing.Size{337, 226}
            Self:groupBox2:TabIndex := 2
            Self:groupBox2:TabStop := false
            // 
            // bnGenerateDebug
            // 
            Self:bnGenerateDebug:Location := System.Drawing.Point{19, 78}
            Self:bnGenerateDebug:Name := "bnGenerateDebug"
            Self:bnGenerateDebug:Size := System.Drawing.Size{290, 49}
            Self:bnGenerateDebug:TabIndex := 0
            Self:bnGenerateDebug:Text := "Generate Debug-Message"
            Self:bnGenerateDebug:UseVisualStyleBackColor := true
            Self:bnGenerateDebug:Click += System.EventHandler{ Self, @bnGenerateDebug_Click() }
            // 
            // lbLog
            // 
            Self:lbLog:BackColor := System.Drawing.Color.FromArgb(((Int)(((Byte)(255)))), ((Int)(((Byte)(255)))), ((Int)(((Byte)(192)))))
            Self:tableLayoutPanel1:SetColumnSpan(Self:lbLog, 2)
            Self:lbLog:Dock := System.Windows.Forms.DockStyle.Fill
            Self:lbLog:FormattingEnabled := true
            Self:lbLog:HorizontalScrollbar := true
            Self:lbLog:ItemHeight := 26
            Self:lbLog:Location := System.Drawing.Point{3, 235}
            Self:lbLog:Name := "lbLog"
            Self:lbLog:Size := System.Drawing.Size{681, 279}
            Self:lbLog:TabIndex := 3
            // 
            // MainForm
            // 
            Self:AutoScaleDimensions := System.Drawing.SizeF{11, 26}
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:ClientSize := System.Drawing.Size{687, 517}
            Self:Controls:Add(Self:tableLayoutPanel1)
            Self:Font := System.Drawing.Font{"Arial Narrow", 11, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((Byte)(0))}
            Self:Margin := System.Windows.Forms.Padding{4}
            Self:Name := "MainForm"
            Self:Text := "Logging with Debug-Listener"
            Self:tableLayoutPanel1:ResumeLayout(false)
            Self:groupBox1:ResumeLayout(false)
            Self:groupBox2:ResumeLayout(false)
            Self:ResumeLayout(false)
        End Method
        #endregion
    End Class 
End Namespace
