Get-Disk | Where-Object { $_.PartitionStyle -eq 'raw' } | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Disk" -Confirm:$false
Get-Partition | Where-Object { $_.DiskNumber -eq 0 } | Set-Partition -NewDriveLetter F
Get-Partition | Where-Object { $_.DiskNumber -eq 1 } | Set-Partition -NewDriveLetter G
Get-Partition | Where-Object { $_.DiskNumber -eq 2 } | Set-Partition -NewDriveLetter H



testtttttttttt lineeee