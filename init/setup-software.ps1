# Installing Ubuntu WSL, Docker, VS Code, and Poshgit

Write-Host -BackgroundColor Black -ForegroundColor Green 'Make sure you have installed chocolatey (instructions https://chocolatey.org/install)'

Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing

Add-AppxPackage .\Ubuntu.appx

choco install vscode -y
choco install poshgit -y
choco install docker-desktop -y
choco install docker-cli -y

New-Item -Path $HOME\src -ItemType Directory

Write-Host -BackgroundColor Black -ForegroundColor Green 'Installing VS Code extentions'

code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell
code --install-extension davidanson.vscode-markdownlint

Write-Host -BackgroundColor Black -ForegroundColor Green 'Launching VS Code with src folder open'

