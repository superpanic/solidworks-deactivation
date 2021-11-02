This script runs the deactivation software when closing down Solidworks.

## Path  
make sure the $wizpath string in the PowerShell script "sw_unreg.ps1" points to swactwiz.exe (the deactivation software).  
      ``$wizpath = "C:\Program Files\SOLIDWORKS 2019\SOLIDWORKS\setup\i386\swactwiz.exe"``

## Prerequisit  
Open PowerShell as Administrator 
Run the following command to allow running the script at startup:  
``Set-ExecutionPolicy -Scope CurrentUser Unrestricted``
  
## Startup  
Place command script "run_sw_unreg.cmd" in Windows startup folder.
