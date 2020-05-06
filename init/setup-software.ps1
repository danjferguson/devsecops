# Installing Ubuntu WSL, Docker, VS Code, and Poshgit

Write-Host -BackgroundColor Black -ForegroundColor Green 'Make sure you have installed chocolatey (instructions https://chocolatey.org/install)'

Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing

Add-AppxPackage .\Ubuntu.appx

choco install vscode -y
choco install poshgit -y
choco install docker-desktop -y
choco install docker-cli -y

Write-Host -BackgroundColor Black -ForegroundColor Green 'Creating src directory to store git repositories'
New-Item -Path $HOME\src -ItemType Directory
Write-Host -BackgroundColor Black -ForegroundColor Green 'Creating kali_root directory to store persistent kali image files'
New-Item -Path $HOME\kali_root -ItemType Directory
Write-Host -BackgroundColor Black -ForegroundColor Green 'Creating postgresql db folder to store metasploit data'
New-Item -Path $HOME\postgresql -ItemType Directory

Write-Host -BackgroundColor Black -ForegroundColor Green 'Installing VS Code extentions'

code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell
code --install-extension davidanson.vscode-markdownlint
code --install-extension mechatroner.rainbow-csv

Write-Host -BackgroundColor Black -ForegroundColor Green 'Launching VS Code with src folder open--save your workspace--and restart your computer!'

code $HOME/src