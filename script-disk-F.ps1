Get-Disk | Where-Object { $_.PartitionStyle -eq 'raw' } | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Data" -Confirm:$false
Get-Partition | Where-Object { $_.DiskNumber -eq 2 } | Set-Partition -NewDriveLetter F
