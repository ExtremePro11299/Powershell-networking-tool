All of these commands are built-in to windows
by default. This tool arranges the networking
Powershell commands into an easily accessible environment.  

This tool is the Powershell version of my [CMD networking tool](https://github.com/ExtremePro11299/CMD-networking-tool).
You have to run it as administrator, or you can set your [execution policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3) to Bypass.

In this version, you cannot save results to a file as that feature in this version is bugged. In CMD it automatically chooses the location in which the file is in, but Powershell does not seem to do that. So the scripts cannot access the **SavedResults** folder.
# Help
## Notes
- It is recommended to switch on show file extensions.
- DO NOT RENAME ANY OF THE FILES OR IT WILL NOT WORK.
  
## Errors

- ### SavedResults folder not found
- Double click on **Networking tool.cmd** (guaranteed fix)
- Manually create the **SavedResults** folder
- Rename an empty folder to **SavedResults**
   
- ### Cannot run Powershell script
- Run the program as administrator (guaranteed fix)
- Set the [execution policy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3) to Bypass

If no solution works for you, or your error isn't listed here, please open an issue.
