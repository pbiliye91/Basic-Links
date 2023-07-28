Get-Disk | Where-Object { $_.PartitionStyle -eq 'raw' } | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Log" -Confirm:$false
Get-Partition | Where-Object { $_.DiskNumber -eq 3 } | Set-Partition -NewDriveLetter G
