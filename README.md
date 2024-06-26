---
Required disk space: 42.4KB
---
Supported OS:
- Windows 7 or newer (tested successfully)
- Windows server 2008 R2 or newer (not tested)
- Linux? (not tested)

[![script](https://img.shields.io/github/actions/workflow/status/ExtremePro11299/Powershell-networking-tool/powershell.yml?label=PowerShellScriptAnalysis&logo=Powershell)](https://github.com/ExtremePro11299/Powershell-networking-tool/actions?workflow=PSScriptAnalyzer)
![License](https://custom-icon-badges.demolab.com/github/license/ExtremePro11299/Powershell-networking-tool?logo=law)  
All of these commands are built-in to windows
by default. This tool arranges the networking
Powershell commands into an easily accessible environment.  

This is the Powershell version of my [CMD networking tool](https://github.com/ExtremePro11299/CMD-networking-tool).
You have to set your [execution policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3) to RemoteSigned and then use the program's "Unblock scripts" feature. 
> The Unblock scripts feature currently does not work on Windows 7. It says cmdlet not found.

In this version, you cannot save results to a file as that feature in this version is bugged. In CMD it automatically chooses the location in which the file is in, but Powershell does not seem to do that. So the scripts cannot access the **SavedResults** folder.
# Updates (newest to oldest)
- Made exit options more detailed (eg. **Exit netstat module** instead of **Exit**)
- Added clear to the scripts to reduce visual clutter
- Fixed a bug in Pingtest.ps1
# Help
## Notes
- It is recommended to switch on show file extensions.
- DO NOT RENAME ANY OF THE FILES OR IT WILL NOT WORK.
  
## Errors
   
- ### Cannot run Powershell script
- Set the [execution policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3) to RemoteSigned or Bypass
- Use the program's "Unblock scripts" feature
  
If no solution works for you, please [open an issue](https://github.com/ExtremePro11299/Powershell-networking-tool/issues/new?assignees=&labels=documentation&projects=&template=new-solution-to-an-error.md&title=New+solution+to+an+error).  
  
If your error isn't listed here, please [open an issue](https://github.com/ExtremePro11299/Powershell-networking-tool/issues/new?assignees=&labels=documentation&projects=&template=new-error.md&title=New+error).
