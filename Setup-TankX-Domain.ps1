# Powershell script to map TankX.com locally to 127.0.0.1
$hostsPath = "$env:windir\System32\drivers\etc\hosts"
$entry = "127.0.0.1 TankX.com"

$content = Get-Content $hostsPath -Raw
if ($content -notmatch "TankX.com") {
    Add-Content -Path $hostsPath -Value "`n127.0.0.1 TankX.com" -Force
    Write-Host "[SUCCESS] Added 127.0.0.1 TankX.com to Windows hosts file!" -ForegroundColor Green
} else {
    Write-Host "[INFO] TankX.com is already configured in Windows hosts file." -ForegroundColor Cyan
}
