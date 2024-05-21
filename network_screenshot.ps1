Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
$bmp = New-Object System.Drawing.Bitmap $bounds.width, $bounds.height
$graphics = [System.Drawing.Graphics]::FromImage($bmp)
$graphics.CopyFromScreen($bounds.Location, [System.Drawing.Point]::Empty, $bounds.Size)
$bmp.Save("C:\Users\Public\screenshot.png")

Start-Process control.exe -ArgumentList '/name Microsoft.NetworkAndSharingCenter' -Wait

[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("^{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("+{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait(" ")
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")
