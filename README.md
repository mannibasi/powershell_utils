# powershell_utils
General PowerShell utility scripts

### Pre-reqs:
  - Set an execution policy (https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-5.1)
    * Set-ExecutionPolicy RemoteSigned
  - Configure/register trusted PSRepository (https://docs.microsoft.com/en-us/powershell/module/powershellget/register-psrepository?view=powershell-5.1)
    * Set-PSRepository -Name PSGallery -Trusted    
  - Install Pester (https://pester.dev/docs/introduction/installation)
    * Uninstall-Module -Name Pester -AllVersions -Force
    * Install-Module -Name Pester -RequiredVersion 4.4.0
  - Install PSScriptAnalyzer (https://github.com/PowerShell/Psscriptanalyzer#installation)
    * Install-PackageProvider Nuget -MinimumVersion 2.8.5.201 –Force
    * Install-Module -Name PSScriptAnalyzer

### Run CI.ps1 to:
  - Scan code in src
  - Run tests in src

### User Pester's New-Fixture command to create basic scaffolding:
```sh
New-Fixture -Path "./src" -Name "FooBar"
```