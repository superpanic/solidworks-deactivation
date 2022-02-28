This script runs the deactivation software when closing down Solidworks. This helps me remember to move the license on days i work from home.

## Path  
Make sure the $wizpath string in the PowerShell script ``sw_unreg.ps1`` points to ``swactwiz.exe`` (the deactivation software).  
      ``$wizpath = "C:\Program Files\SOLIDWORKS 2019\SOLIDWORKS\setup\i386\swactwiz.exe"``
      
Also set the paths to the PowerShell script and log file in the Command script ``run_sw_unreg.cmd``.  
      ``PowerShell -WindowStyle Hidden C:\scripts\sw_unreg.ps1 >> C:\scripts\scriptlog.log 2>&1``

## Prerequisit  
Open Windows PowerShell as Administrator 
Run the following command to allow running the script at startup:  
``Set-ExecutionPolicy -Scope CurrentUser Unrestricted``
  
  Please study and understand the security issues with unrestricted access. I would also mention you might need to do this two times, in normal PowerShell, and once more in Windows PowerShell (x86) Unexpected but the 2 have different set of policies.
  
## Run at startup  
Place command script "run_sw_unreg.cmd" in Windows startup folder.  
(Winkey + R type `shell:startup` to open your startup folder)
