Write-Host -BackgroundColor Black -ForegroundColor Green 'Creating src directory to store git repositories'
New-Item -Path $HOME\src -ItemType Directory
Write-Host -BackgroundColor Black -ForegroundColor Green 'Creating kali_root directory to store persistent kali image files'
New-Item -Path $HOME\kali_root -ItemType Directory

Write-Host -BackgroundColor Black -ForegroundColor Green 'Installing VS Code extentions'

code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell
code --install-extension davidanson.vscode-markdownlint
code --install-extension mechatroner.rainbow-csv
code --install-extension redhat.vscode-yaml

Write-Host -BackgroundColor Black -ForegroundColor Green 'Launching VS Code with src folder open--save your workspace using File menu--and restart your computer!'

code $HOME/src