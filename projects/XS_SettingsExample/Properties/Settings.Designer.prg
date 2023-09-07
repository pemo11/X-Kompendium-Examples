Begin Namespace SettingsExample.Properties
    [Global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()] ;
    [Global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "17.5.0.0")] ;
    Internal Sealed Partial Class Settings ;
        Inherit Global::System.Configuration.ApplicationSettingsBase
        Private Static defaultInstance := ((Settings)(Global::System.Configuration.ApplicationSettingsBase.Synchronized(Settings{}))) As Settings
        Public Static Property @@Default As Settings
        
            Get
                Return defaultInstance
            End Get
        End Property 
        [Global::System.Configuration.ApplicationScopedSettingAttribute()] ;
        [Global::System.Diagnostics.DebuggerNonUserCodeAttribute()] ;
        [Global::System.Configuration.DefaultSettingValueAttribute("Blue")] ;
                Public Property FormBackground As Global::System.Drawing.Color
        
            Get
                Return ((Global::System.Drawing.Color)(Self["FormBackground"]))
            End Get
        End Property 
    
    End Class 
End Namespace
