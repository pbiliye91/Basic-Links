Get-Disk | Where-Object { $_.PartitionStyle -eq 'raw' } | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Disk" -Confirm:$false

Get-Partition | Where-Object { $_.DiskNumber -eq 2 } | Set-Partition -NewDriveLetter F
Get-Partition | Where-Object { $_.DiskNumber -eq 3 } | Set-Partition -NewDriveLetter G
Get-Partition | Where-Object { $_.DiskNumber -eq 4 } | Set-Partition -NewDriveLetter H
Get-Partition | Where-Object { $_.DiskNumber -eq 5 } | Set-Partition -NewDriveLetter I
Get-Partition | Where-Object { $_.DiskNumber -eq 6 } | Set-Partition -NewDriveLetter J
Get-Partition | Where-Object { $_.DiskNumber -eq 7 } | Set-Partition -NewDriveLetter K
Get-Partition | Where-Object { $_.DiskNumber -eq 8 } | Set-Partition -NewDriveLetter L
Get-Partition | Where-Object { $_.DiskNumber -eq 9 } | Set-Partition -NewDriveLetter M
Get-Partition | Where-Object { $_.DiskNumber -eq 10 } | Set-Partition -NewDriveLetter N
Get-Partition | Where-Object { $_.DiskNumber -eq 11 } | Set-Partition -NewDriveLetter O
Get-Partition | Where-Object { $_.DiskNumber -eq 12 } | Set-Partition -NewDriveLetter P
Get-Partition | Where-Object { $_.DiskNumber -eq 13 } | Set-Partition -NewDriveLetter R
Get-Partition | Where-Object { $_.DiskNumber -eq 14 } | Set-Partition -NewDriveLetter S
Get-Partition | Where-Object { $_.DiskNumber -eq 15 } | Set-Partition -NewDriveLetter T
Get-Partition | Where-Object { $_.DiskNumber -eq 16 } | Set-Partition -NewDriveLetter U
Get-Partition | Where-Object { $_.DiskNumber -eq 17 } | Set-Partition -NewDriveLetter V
Get-Partition | Where-Object { $_.DiskNumber -eq 18 } | Set-Partition -NewDriveLetter W
Get-Partition | Where-Object { $_.DiskNumber -eq 19 } | Set-Partition -NewDriveLetter X
Get-Partition | Where-Object { $_.DiskNumber -eq 20 } | Set-Partition -NewDriveLetter Y
Get-Partition | Where-Object { $_.DiskNumber -eq 21 } | Set-Partition -NewDriveLetter Z
