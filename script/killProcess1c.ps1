param([Int32]$port=48000)
Get-NetTCPConnection -LocalPort $port | Select-Object -Property OwningProcess |Get-Unique | % { Get-Process -Id $_.OwningProcess} | where { $_.ProcessName -like "1cv8*"} |%{Stop-Process $_.Id}

