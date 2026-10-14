# Create Windows Desktop Shortcut for TankX
$WshShell = New-Object -ComObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$TargetDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$BatchPath = Join-Path $TargetDir "Start-TankX.bat"
$ShortcutPath = Join-Path $DesktopPath "TankX Smart Fuel Protection.lnk"

$Shortcut = $WshShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $BatchPath
$Shortcut.WorkingDirectory = $TargetDir
$Shortcut.Description = "TankX Smart Fuel Tank Protection Enterprise System"
$Shortcut.IconLocation = "shell32.dll,14"
$Shortcut.Save()

Write-Host "✅ Desktop shortcut created at: $ShortcutPath"
