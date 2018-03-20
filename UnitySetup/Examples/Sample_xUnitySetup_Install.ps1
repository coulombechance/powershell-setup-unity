<#
    Install multiple versions of Unity and several components
#>
Configuration Sample_xUnitySetup_Install {

    Import-DscResource -ModuleName UnitySetup

    Node 'localhost' {

        xUnitySetup Unity {
            Versions   = '2017.3.1f1,2018.1.0b9'
            Components = 'Setup', 'Mac', 'Linux', 'Metro', 'iOS'
            Ensure     = 'Present'
        }
    }
}