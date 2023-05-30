All of these commands are built-in to windows
by default. This tool arranges the networking
Powershell commands into an easily accessible environment.
It allows you to save the results to a file that will be 
stored in the **SavedResults** folder, which is created on the first run.
**powershell.exe** does support saving results to files as well.         

This tool is the Powershell version of my [CMD networking tool](https://github.com/ExtremePro11299/CMD-networking-tool).
This tool only works if your [execution policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3) is set to Bypass.
Eventually, all of the CMD files will be converted into PS1 files.

In this version, you cannot save results to a file as that feature in this version is bugged. In CMD it automatically chooses the location in which the file is in, but Powershell does not seem to do that. So the scripts cannot access the **SavedResults** folder.

--Planned updates--
- More **NETSTAT** commands
- **IPCONFIG** command

---------------Help------------------  
---Notes---  
- It is recommended to switch on show file extensions.
- DO NOT RENAME ANY OF THE FILES OR IT WILL NOT WORK.
- When you save results to a file, the tool creates a random id for it.
  
--Errors--  

If it cannot find the **SavedResults** folder,
then double click on **Networking tool.cmd** and it should work.
