This script runs the deactivation software when closing down Solidworks.

1. make sure the $wizpath string in the PowerShell script "sw_unreg.ps1" points to swactwiz.exe (the deactivation software) 
$wizpath = "C:\Program Files\SOLIDWORKS 2019\SOLIDWORKS\setup\i386\swactwiz.exe"

2. Open PowerShell as Administrator

3. Run the following command to allow running the script at startup:
Set-ExecutionPolicy -Scope CurrentUser Unrestricted

4. Place command script "run_sw_unreg.cmd" in windows startup folder
