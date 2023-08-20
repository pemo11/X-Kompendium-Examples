Begin Namespace WindowsFormsApplication1.Properties
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()] ;
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "17.5.0.0")] ;
    Internal Sealed Partial Class Settings ;
        Inherit global::System.Configuration.ApplicationSettingsBase
        Private Static defaultInstance := ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(Settings{}))) As Settings
        Public Static Property @@Default As Settings
        
            Get
                Return defaultInstance
            End Get
        End Property 
        [global::System.Configuration.UserScopedSettingAttribute()] ;
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()] ;
        [global::System.Configuration.DefaultSettingValueAttribute("1234")] ;
                Public Property Wert As global::String
        
            Get
                Return ((global::String)(Self["Wert"]))
            End Get
        
            Set
                Self["Wert"] := value
            End Set
        End Property 
    
    End Class 
End Namespace
