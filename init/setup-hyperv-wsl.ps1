# Setup HyperV and WSL on Windows 10

Write-Host -BackgroundColor Black -ForegroundColor Green 'Requires Windows 1709+ and virtualization enabled in the system BIOS - REBOOT AFTER COMPLETION'

Write-Host -BackgroundColor Black -ForegroundColor Green 'Enable HyperV'

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart

Write-Host -BackgroundColor Black -ForegroundColor Green 'Enable WSL'

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart

Write-Host -BackgroundColor Black -ForegroundColor Green 'Reboot your computer now'