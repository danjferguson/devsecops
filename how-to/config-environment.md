# Configuring Your Environment

References for enviroment configurations

## Case Styles

![Different types of case](https://medium.com/better-programming/string-case-styles-camel-pascal-snake-and-kebab-case-981407998841)

## Home Folder

### Windows

Using PowerShell, typing `cd ~` navigates to the current user's home directory.

#### PowerShell Profile

![How to Create a PowerShell Profile](https://www.howtogeek.com/126469/how-to-create-a-powershell-profile/)

Basic PowerShell commands:

* `{application} /?` Application help menu
* `hostname` - Hostname of the computer currently logged into
* `whoami` - Display's currently logged in username

### Linux

Using Bash, typing `cd ~` navigates to the current user's home directory.

Basic Bash commands:

* `man {application}` - Manual
* `ls -la` - List all files/folders
* `su` - Substitute User
* `sudo {application}` - Run application with security permissions of the user
* `hostname` - Hostname of the computer currently logged into
* `whoami` - Display's currently logged in username

#### Dotfiles

Hidden files attributed to the user's environment.

* bashrc
* bash_profile
* profile
* vimrc
* tmux.conf
* gitconfig

### Config Folders

* config
* ssh
* vim
* vscode

### Prompt File

* git-prompt.sh
* bash-completion.sh

### Docker Folders

Create a basic structure

* docker_stor - production data
* test_stor - test data
* certs - self-signed certificates

## 
