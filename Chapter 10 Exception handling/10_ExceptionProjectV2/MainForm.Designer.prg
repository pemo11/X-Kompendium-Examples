﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.13.2.2
//     Timestamp      : 13.03.2023 21:04:06
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace ExceptionProject

    Public Partial Class mainForm

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private lbQuote As System.Windows.Forms.Label
        Private bnQuote As System.Windows.Forms.Button
        Private groupBox1 As System.Windows.Forms.GroupBox
        Private cbSimulate As System.Windows.Forms.CheckBox

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
            Self:groupBox1 := System.Windows.Forms.GroupBox{}
            Self:cbSimulate := System.Windows.Forms.CheckBox{}
            Self:lbQuote := System.Windows.Forms.Label{}
            Self:bnQuote := System.Windows.Forms.Button{}
            Self:groupBox1:SuspendLayout()
            Self:SuspendLayout()
            // 
            // groupBox1
            // 
            Self:groupBox1:Controls:Add(Self:cbSimulate)
            Self:groupBox1:Controls:Add(Self:lbQuote)
            Self:groupBox1:Controls:Add(Self:bnQuote)
            Self:groupBox1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:groupBox1:Location := System.Drawing.Point{0, 0}
            Self:groupBox1:Name := "groupBox1"
            Self:groupBox1:Size := System.Drawing.Size{737, 370}
            Self:groupBox1:TabIndex := 0
            Self:groupBox1:TabStop := false
            // 
            // cbSimulate
            // 
            Self:cbSimulate:AutoSize := true
            Self:cbSimulate:Location := System.Drawing.Point{69, 291}
            Self:cbSimulate:Name := "cbSimulate"
            Self:cbSimulate:Size := System.Drawing.Size{241, 30}
            Self:cbSimulate:TabIndex := 2
            Self:cbSimulate:Text := "Simulate exception"
            Self:cbSimulate:UseVisualStyleBackColor := true
            // 
            // lbQuote
            // 
            Self:lbQuote:BackColor := System.Drawing.Color.Gold
            Self:lbQuote:Font := System.Drawing.Font{"Microsoft Sans Serif", 16, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((Byte)(0))}
            Self:lbQuote:Location := System.Drawing.Point{62, 160}
            Self:lbQuote:Name := "lbQuote"
            Self:lbQuote:Size := System.Drawing.Size{592, 93}
            Self:lbQuote:TabIndex := 1
            Self:lbQuote:Text := "label1"
            // 
            // bnQuote
            // 
            Self:bnQuote:BackColor := System.Drawing.Color.FromArgb(((Int)(((Byte)(192)))), ((Int)(((Byte)(192)))), ((Int)(((Byte)(255)))))
            Self:bnQuote:Location := System.Drawing.Point{237, 51}
            Self:bnQuote:Name := "bnQuote"
            Self:bnQuote:Size := System.Drawing.Size{216, 66}
            Self:bnQuote:TabIndex := 0
            Self:bnQuote:Text := "Get a quote"
            Self:bnQuote:UseVisualStyleBackColor := false
            Self:bnQuote:Click += System.EventHandler{ Self, @bnQuote_Click() }
            // 
            // mainForm
            // 
            Self:AutoScaleDimensions := System.Drawing.SizeF{14, 26}
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:ClientSize := System.Drawing.Size{737, 370}
            Self:Controls:Add(Self:groupBox1)
            Self:Font := System.Drawing.Font{"Microsoft Sans Serif", 11, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((Byte)(0))}
            Self:Margin := System.Windows.Forms.Padding{5, 4, 5, 4}
            Self:Name := "mainForm"
            Self:Text := "Getting a famous quote - V2"
            Self:groupBox1:ResumeLayout(false)
            Self:groupBox1:PerformLayout()
            Self:ResumeLayout(false)
        End Method
        #endregion
    End Class 
End Namespace