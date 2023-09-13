# Muzahid
# This script will only work on Microsoft-Windows-StorageReplica/Admin and EventID: 5014. If you want to change then change here as well as in scheduler.

# Get the event information from the Windows Event Log
$EventID = 5014
$EventAdmin = Get-WinEvent -MaxEvents 1 -FilterHashtable @{Logname = "Microsoft-Windows-StorageReplica/Admin"; ID = $EventID}
