# SSH Keys

## id_rsa

`ssh-keygen -t rsa -b 4096 -C "user@organization.com"`

* Hit enter for the default file `~/.ssh/id_rsa/` used as the default ssh key

## Ansible

`ssh-keygen -t rsa -b 4096 -C "ansible@chpw.org" -f ~/.ssh/ansible`

* Specify the file name for the specific ssh key

* Do not enter a password for Ansible ssh key if it will be used for automation tasks

## Github

`ssh-keygen -t rsa -b 4096 -C "github_user@organization.com" -f ~/.ssh/github_user`

* Useful for external sites to reduce ssh key compromise impact

## authorized_keys

* Copy the key to the remote host to allow login `ssh-copy-id -i ~/.ssh/id_rsa.pub user@host`

## Caching Credentials

* Use `eval "(ssh-agent -s)"` from bash to load your ssh setting into your environment

* Use `ssh-add` to load the default ssh key `id_rsa`

* Use `ssh-add ~/.ssh/github_user` to load specific ssh keys