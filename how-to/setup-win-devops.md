# Windows DevOps System Setup

This document outlines the recommended steps to setup your own Windows DevOps environment with Chocolatey, Git, PoshGit, and VSCode.

## Prerequisites

1. Current version of Windows 10
2. PowerShell (local admin access required)
3. Repository access (GitHub account - sign up here: <https://github.com/join>)

## Chocolatey

<https://chocolatey.org/install>

Install from within Administrative PowerShell (verify you can run scripts running `Get-ExecutionLevel`)

`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`

## Run Install Script

Run below from your home directory from an Administrative Powershell:

`Invoke-WebRequest -Uri https://raw.githubusercontent.com/danjferguson/devsecops/master/init/setup-software.ps1 -OutFile setup-software.ps1 -usebasicparsing`

## VS Code

Once the prequisite software has been installed, you will want to create your VS Code Workspace to have a clean slate to work from and adjust your settings to your liking.

You can save this workspace within VS Code in order to preserve your specific settings.

Additional documentation will normally open in a browser when you run ![VS Code](https://code.visualstudio.com/Docs) for the first time.

The default view has a folder explorer and the document work space. You can access the integrated PowerShell terminal by pressing CTRL + SHIFT + ~. If you're at the folder location where you want to save a local copy of repositories, run the following command with the appropriate link to the repository.

On this repository's page click the Clone or download button to get the HTTPS link by clicking the clipboard button:
![alt text](https://code.visualstudio.com/Docs) "Clone link"
