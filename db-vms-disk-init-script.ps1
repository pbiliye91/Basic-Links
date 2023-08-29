$diskNumber1 = 2
$diskNumber2 = 3
$diskNumber3 = 4

# Initialize and format first disk without drive letter
Get-Disk -Number $diskNumber1 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "data" -AssignDriveLetter $false -Confirm:$false

# Initialize and format second disk without drive letter
Get-Disk -Number $diskNumber2 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "log" -AssignDriveLetter $false -Confirm:$false

# Initialize and format third disk without drive letter
Get-Disk -Number $diskNumber3 | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "tempDb" -AssignDriveLetter $false -Confirm:$false
