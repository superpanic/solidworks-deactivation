$taskname = 'SLDWORKS.exe'

$wizpath = "C:\Program Files\SOLIDWORKS 2019\SOLIDWORKS\setup\i386\swactwiz.exe"

$timespan = New-Object System.TimeSpan(0,0,2);
$scope = New-Object System.Management.ManagementScope("\\.\root\cimV2")
$query = New-Object System.Management.WqlEventQuery ("__InstanceDeletionEvent",$timespan,"TargetInstance ISA 'Win32_Process'")
$watcher = New-Object System.Management.ManagementEventWatcher($scope,$query)

do {
	$e = $watcher.WaitForNextEvent()
	if($taskname -eq $e.TargetInstance.Name) {
		Start-Process -FilePath $wizpath
	}
} while(1)
