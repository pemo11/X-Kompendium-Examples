﻿//------------------------------------------------------------------------------
//  <auto-generated>
//     This code was generated by a tool.
//     Runtime version: 4.0.30319.42000
//     Generator      : XSharp.CodeDomProvider 2.13.2.2
//     Timestamp      : 14.05.2023 00:00:27
//     
//     Changes to this file may cause incorrect behavior and may be lost if
//     the code is regenerated.
//  </auto-generated>
//------------------------------------------------------------------------------
Begin Namespace TheDatabindingExample_16

    Public Partial Class Form1

        /// <summary>
        /// Required designer variable.
        /// </summary>
        Private components := Null As System.ComponentModel.IContainer
        Private tableLayoutPanel1 As System.Windows.Forms.TableLayoutPanel
        Private dataGridView1 As System.Windows.Forms.DataGridView
        Private bindingNavigator1 As System.Windows.Forms.BindingNavigator
        Private bindingNavigatorAddNewItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorCountItem As System.Windows.Forms.ToolStripLabel
        Private bindingNavigatorDeleteItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorMoveFirstItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorMovePreviousItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorSeparator As System.Windows.Forms.ToolStripSeparator
        Private bindingNavigatorPositionItem As System.Windows.Forms.ToolStripTextBox
        Private bindingNavigatorSeparator1 As System.Windows.Forms.ToolStripSeparator
        Private bindingNavigatorMoveNextItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorMoveLastItem As System.Windows.Forms.ToolStripButton
        Private bindingNavigatorSeparator2 As System.Windows.Forms.ToolStripSeparator
        Private groupBox1 As System.Windows.Forms.GroupBox
        Private dataGridView2 As System.Windows.Forms.DataGridView

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
            Self:components := System.ComponentModel.Container{}
            Local resources := System.ComponentModel.ComponentResourceManager{Typeof(Form1)} As System.ComponentModel.ComponentResourceManager
            Self:tableLayoutPanel1 := System.Windows.Forms.TableLayoutPanel{}
            Self:dataGridView1 := System.Windows.Forms.DataGridView{}
            Self:bindingNavigator1 := System.Windows.Forms.BindingNavigator{Self:components}
            Self:bindingNavigatorAddNewItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorCountItem := System.Windows.Forms.ToolStripLabel{}
            Self:bindingNavigatorDeleteItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorMoveFirstItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorMovePreviousItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorSeparator := System.Windows.Forms.ToolStripSeparator{}
            Self:bindingNavigatorPositionItem := System.Windows.Forms.ToolStripTextBox{}
            Self:bindingNavigatorSeparator1 := System.Windows.Forms.ToolStripSeparator{}
            Self:bindingNavigatorMoveNextItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorMoveLastItem := System.Windows.Forms.ToolStripButton{}
            Self:bindingNavigatorSeparator2 := System.Windows.Forms.ToolStripSeparator{}
            Self:groupBox1 := System.Windows.Forms.GroupBox{}
            Self:dataGridView2 := System.Windows.Forms.DataGridView{}
            Self:tableLayoutPanel1:SuspendLayout()
            ((System.ComponentModel.ISupportInitialize)(Self:dataGridView1)):BeginInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bindingNavigator1)):BeginInit()
            Self:bindingNavigator1:SuspendLayout()
            Self:groupBox1:SuspendLayout()
            ((System.ComponentModel.ISupportInitialize)(Self:dataGridView2)):BeginInit()
            Self:SuspendLayout()
            // 
            // tableLayoutPanel1
            // 
            Self:tableLayoutPanel1:BackColor := System.Drawing.Color.FromArgb(((Int)(((Byte)(255)))), ((Int)(((Byte)(192)))), ((Int)(((Byte)(255)))))
            Self:tableLayoutPanel1:ColumnCount := 1
            Self:tableLayoutPanel1:ColumnStyles:Add(System.Windows.Forms.ColumnStyle{System.Windows.Forms.SizeType.Percent, 100})
            Self:tableLayoutPanel1:Controls:Add(Self:dataGridView1, 0, 0)
            Self:tableLayoutPanel1:Controls:Add(Self:bindingNavigator1, 0, 1)
            Self:tableLayoutPanel1:Controls:Add(Self:groupBox1, 0, 2)
            Self:tableLayoutPanel1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:tableLayoutPanel1:Location := System.Drawing.Point{0, 0}
            Self:tableLayoutPanel1:Name := "tableLayoutPanel1"
            Self:tableLayoutPanel1:RowCount := 3
            Self:tableLayoutPanel1:RowStyles:Add(System.Windows.Forms.RowStyle{System.Windows.Forms.SizeType.Percent, 75})
            Self:tableLayoutPanel1:RowStyles:Add(System.Windows.Forms.RowStyle{})
            Self:tableLayoutPanel1:RowStyles:Add(System.Windows.Forms.RowStyle{System.Windows.Forms.SizeType.Percent, 25})
            Self:tableLayoutPanel1:Size := System.Drawing.Size{1091, 632}
            Self:tableLayoutPanel1:TabIndex := 0
            // 
            // dataGridView1
            // 
            Self:dataGridView1:ColumnHeadersHeightSizeMode := System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
            Self:dataGridView1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:dataGridView1:Location := System.Drawing.Point{3, 3}
            Self:dataGridView1:Name := "dataGridView1"
            Self:dataGridView1:RowHeadersWidth := 62
            Self:dataGridView1:RowTemplate:Height := 28
            Self:dataGridView1:Size := System.Drawing.Size{1085, 439}
            Self:dataGridView1:TabIndex := 0
            // 
            // bindingNavigator1
            // 
            Self:bindingNavigator1:AddNewItem := Self:bindingNavigatorAddNewItem
            Self:bindingNavigator1:CountItem := Self:bindingNavigatorCountItem
            Self:bindingNavigator1:DeleteItem := Self:bindingNavigatorDeleteItem
            Self:bindingNavigator1:ImageScalingSize := System.Drawing.Size{24, 24}
            Self:bindingNavigator1:Items:AddRange(<System.Windows.Forms.ToolStripItem>{ Self:bindingNavigatorMoveFirstItem, Self:bindingNavigatorMovePreviousItem, Self:bindingNavigatorSeparator, Self:bindingNavigatorPositionItem, Self:bindingNavigatorCountItem, Self:bindingNavigatorSeparator1, Self:bindingNavigatorMoveNextItem, Self:bindingNavigatorMoveLastItem, Self:bindingNavigatorSeparator2, Self:bindingNavigatorAddNewItem, Self:bindingNavigatorDeleteItem })
            Self:bindingNavigator1:Location := System.Drawing.Point{0, 445}
            Self:bindingNavigator1:MoveFirstItem := Self:bindingNavigatorMoveFirstItem
            Self:bindingNavigator1:MoveLastItem := Self:bindingNavigatorMoveLastItem
            Self:bindingNavigator1:MoveNextItem := Self:bindingNavigatorMoveNextItem
            Self:bindingNavigator1:MovePreviousItem := Self:bindingNavigatorMovePreviousItem
            Self:bindingNavigator1:Name := "bindingNavigator1"
            Self:bindingNavigator1:PositionItem := Self:bindingNavigatorPositionItem
            Self:bindingNavigator1:Size := System.Drawing.Size{1091, 38}
            Self:bindingNavigator1:TabIndex := 1
            Self:bindingNavigator1:Text := "bindingNavigator1"
            // 
            // bindingNavigatorAddNewItem
            // 
            Self:bindingNavigatorAddNewItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorAddNewItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorAddNewItem.Image")))
            Self:bindingNavigatorAddNewItem:Name := "bindingNavigatorAddNewItem"
            Self:bindingNavigatorAddNewItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorAddNewItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorAddNewItem:Text := "Add new"
            // 
            // bindingNavigatorCountItem
            // 
            Self:bindingNavigatorCountItem:Name := "bindingNavigatorCountItem"
            Self:bindingNavigatorCountItem:Size := System.Drawing.Size{54, 33}
            Self:bindingNavigatorCountItem:Text := "of {0}"
            Self:bindingNavigatorCountItem:ToolTipText := "Total number of items"
            // 
            // bindingNavigatorDeleteItem
            // 
            Self:bindingNavigatorDeleteItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorDeleteItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorDeleteItem.Image")))
            Self:bindingNavigatorDeleteItem:Name := "bindingNavigatorDeleteItem"
            Self:bindingNavigatorDeleteItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorDeleteItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorDeleteItem:Text := "Delete"
            // 
            // bindingNavigatorMoveFirstItem
            // 
            Self:bindingNavigatorMoveFirstItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorMoveFirstItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorMoveFirstItem.Image")))
            Self:bindingNavigatorMoveFirstItem:Name := "bindingNavigatorMoveFirstItem"
            Self:bindingNavigatorMoveFirstItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorMoveFirstItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorMoveFirstItem:Text := "Move first"
            // 
            // bindingNavigatorMovePreviousItem
            // 
            Self:bindingNavigatorMovePreviousItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorMovePreviousItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorMovePreviousItem.Image")))
            Self:bindingNavigatorMovePreviousItem:Name := "bindingNavigatorMovePreviousItem"
            Self:bindingNavigatorMovePreviousItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorMovePreviousItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorMovePreviousItem:Text := "Move previous"
            // 
            // bindingNavigatorSeparator
            // 
            Self:bindingNavigatorSeparator:Name := "bindingNavigatorSeparator"
            Self:bindingNavigatorSeparator:Size := System.Drawing.Size{6, 38}
            // 
            // bindingNavigatorPositionItem
            // 
            Self:bindingNavigatorPositionItem:AccessibleName := "Position"
            Self:bindingNavigatorPositionItem:AutoSize := false
            Self:bindingNavigatorPositionItem:Font := System.Drawing.Font{"Segoe UI", 9}
            Self:bindingNavigatorPositionItem:Name := "bindingNavigatorPositionItem"
            Self:bindingNavigatorPositionItem:Size := System.Drawing.Size{50, 31}
            Self:bindingNavigatorPositionItem:Text := "0"
            Self:bindingNavigatorPositionItem:ToolTipText := "Current position"
            // 
            // bindingNavigatorSeparator1
            // 
            Self:bindingNavigatorSeparator1:Name := "bindingNavigatorSeparator1"
            Self:bindingNavigatorSeparator1:Size := System.Drawing.Size{6, 38}
            // 
            // bindingNavigatorMoveNextItem
            // 
            Self:bindingNavigatorMoveNextItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorMoveNextItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorMoveNextItem.Image")))
            Self:bindingNavigatorMoveNextItem:Name := "bindingNavigatorMoveNextItem"
            Self:bindingNavigatorMoveNextItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorMoveNextItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorMoveNextItem:Text := "Move next"
            // 
            // bindingNavigatorMoveLastItem
            // 
            Self:bindingNavigatorMoveLastItem:DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image
            Self:bindingNavigatorMoveLastItem:Image := ((System.Drawing.Image)(resources:GetObject("bindingNavigatorMoveLastItem.Image")))
            Self:bindingNavigatorMoveLastItem:Name := "bindingNavigatorMoveLastItem"
            Self:bindingNavigatorMoveLastItem:RightToLeftAutoMirrorImage := true
            Self:bindingNavigatorMoveLastItem:Size := System.Drawing.Size{34, 33}
            Self:bindingNavigatorMoveLastItem:Text := "Move last"
            // 
            // bindingNavigatorSeparator2
            // 
            Self:bindingNavigatorSeparator2:Name := "bindingNavigatorSeparator2"
            Self:bindingNavigatorSeparator2:Size := System.Drawing.Size{6, 38}
            // 
            // groupBox1
            // 
            Self:groupBox1:Controls:Add(Self:dataGridView2)
            Self:groupBox1:Dock := System.Windows.Forms.DockStyle.Fill
            Self:groupBox1:Location := System.Drawing.Point{3, 486}
            Self:groupBox1:Name := "groupBox1"
            Self:groupBox1:Size := System.Drawing.Size{1085, 143}
            Self:groupBox1:TabIndex := 2
            Self:groupBox1:TabStop := false
            Self:groupBox1:Text := "Available books"
            // 
            // dataGridView2
            // 
            Self:dataGridView2:ColumnHeadersHeightSizeMode := System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
            Self:dataGridView2:Dock := System.Windows.Forms.DockStyle.Fill
            Self:dataGridView2:Location := System.Drawing.Point{3, 29}
            Self:dataGridView2:Name := "dataGridView2"
            Self:dataGridView2:RowHeadersWidth := 62
            Self:dataGridView2:RowTemplate:Height := 28
            Self:dataGridView2:Size := System.Drawing.Size{1079, 111}
            Self:dataGridView2:TabIndex := 0
            // 
            // Form1
            // 
            Self:AutoScaleDimensions := System.Drawing.SizeF{11, 26}
            Self:AutoScaleMode := System.Windows.Forms.AutoScaleMode.Font
            Self:ClientSize := System.Drawing.Size{1091, 632}
            Self:Controls:Add(Self:tableLayoutPanel1)
            Self:Font := System.Drawing.Font{"Arial Narrow", 11, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((Byte)(0))}
            Self:Margin := System.Windows.Forms.Padding{4}
            Self:Name := "Form1"
            Self:Text := e"The \"great\" DataBinding example"
            Self:tableLayoutPanel1:ResumeLayout(false)
            Self:tableLayoutPanel1:PerformLayout()
            ((System.ComponentModel.ISupportInitialize)(Self:dataGridView1)):EndInit()
            ((System.ComponentModel.ISupportInitialize)(Self:bindingNavigator1)):EndInit()
            Self:bindingNavigator1:ResumeLayout(false)
            Self:bindingNavigator1:PerformLayout()
            Self:groupBox1:ResumeLayout(false)
            ((System.ComponentModel.ISupportInitialize)(Self:dataGridView2)):EndInit()
            Self:ResumeLayout(false)
        End Method
        #endregion
    End Class 
End Namespace
