# Getting Started with Git

This guide is for beginners just getting started using Git for version control. Git allows you to work offline with code and collaborate using branches and merging code at the repository to reduce conflicts with other people's work.

## Requirements

1. Git version 2.20+
2. Remote repository
3. Local working directory

This guide assumes you have an understanding of the environment configured in the ![Windows DevOps System Setup](https://github.com/danjferguson/devopsbydan/blob/master/how-to/setup-win-devops.md) guide.

## Git Pull, Git Commit and Git Push

First make sure you are root directory of the repository, in this case devopsbydan.

`git pull`

Add new files to respository:

`git add <path-to-file>`

After saving changes (Ctrl S) to file being worked, do a Git Commit, a is for all, m is message-limit yourself 50 character length subject: 

`git commit -a -m "insert commit message here"`

If you just want to commit a single file you have modified enter the path of the filename instead of the `-a`

`git commit <path-of-file> -m "commit message"`

Post these changes to the repository via Git Push: 

`git push`

## Into to Linux Video

Here is a useful YouTube video on beginning Linux

![SANS Institute - Introduction to Linux](https://www.youtube.com/watch?v=bU3ZnRt5qNk)

## Cheat Sheet

Example commands for using Git with this repository as an example. Replace your own repository address as needed. Examples are done with HTTPS connection. Git follows the logic of the command `git` and the operation (ie `git add`) followed by the options and path you are trying to execute.

Git commands must be run from within an initialized git folder or the root path of the cloned repository. Access help menus ending the command with -? (command line help) or --help (launches web based manual page).

`git add --help`

Configure your default e-mail address and name for global usage

* Set your global email address with `git config --global user.email "daniel@securenetwork.tech"`

* Set your global user name with `git config --global user.name "Dan Ferguson"`

* View your global git config with `git config --list`

Cloning remote repository

`git clone https://github.com/danjferguson/devsecops.git`

Adding individual files to git tracking

`git add file`

Add multiple files to git tracking (be careful of this option unless you're doing bulk imports)

`git add --all`

Viewing the status of your local copy of the repository.

`git status`