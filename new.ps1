$diskNumber1 = 2
$diskNumber2 = 3
$diskNumber3 = 4

# Initialize and format first disk with drive letter F and label "Disk"
Get-Disk -Number $diskNumber1 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "data" -Confirm:$false | Set-Partition -NewDriveLetter F

# Initialize and format second disk with drive letter G and label "Temp"
Get-Disk -Number $diskNumber2 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "log" -Confirm:$false | Set-Partition -NewDriveLetter G

# Initialize and format third disk with drive letter H and label "Backup"
Get-Disk -Number $diskNumber3 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "tempDb" -Confirm:$false | Set-Partition -NewDriveLetter H
