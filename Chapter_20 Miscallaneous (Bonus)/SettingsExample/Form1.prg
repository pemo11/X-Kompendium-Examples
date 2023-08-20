USING System
Using System.ComponentModel

Using System.Configuration

Using System.Windows.Forms

Using System.Reflection
Using System.Drawing

[assembly: AssemblyVersion("1.0.*")]

BEGIN NAMESPACE SettingsExample

    Public Partial Class MainForm Inherit Form

        Public Constructor()
            InitializeComponent()
            // Self:Backcolor := Properties.Settings.Default:FormBackground
            Self:Backcolor := Color.FromName(ConfigurationManager.AppSettings["FormBackground"])
            Self:Text := i"Version: {Assembly.GetExecutingAssembly().GetName().Version}"
            RETURN
        END CONSTRUCTOR
    END CLASS
END NAMESPACE
