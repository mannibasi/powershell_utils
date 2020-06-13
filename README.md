# powershell_utils
General PowerShell utility scripts

### Pre-reqs:
  - Configure/register trusted PSRepository (https://docs.microsoft.com/en-us/powershell/module/powershellget/register-psrepository?view=powershell-5.1)
  - Install Pester (https://pester.dev/docs/introduction/installation)
  - Install PSScriptAnalyzer (https://github.com/PowerShell/Psscriptanalyzer#installation)
  - Set an execution policy (https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-5.1)

### Run CI.ps1 to:
  - Scan code in src
  - Run tests in src

### User Pester's New-Fixture command to create basic scaffolding:
```sh
New-Fixture -Path "./src" -Name "FooBar"
```