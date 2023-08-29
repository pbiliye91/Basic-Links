$diskNumber1 = 2

# Initialize and format first disk with drive letter F and label "Disk"
Get-Disk -Number $diskNumber1 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "data" -Confirm:$false | Set-Partition -NewDriveLetter F
