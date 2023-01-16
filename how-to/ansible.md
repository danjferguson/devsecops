# Using Ansible

## Initial Setup

Must be run from bash shell (Linux or MacOS). This document uses Ubuntu 18.04 LTS.

* Install Ansible software prerequisites and add repository

```bash
sudo apt install apt-transport-https ca-certificates software-properties-common curl
sudo apt-add-repository ppa:ansible/ansible -s -y
sudo apt install ansible
```

## Configuration

* Add target host to Ansible hosts file `sudo vi /etc/ansible/hosts` by entering the hostname and the ip address following the examples within the hosts file

* Specify Python3 to avoid compatibility problems by adding the following section

```bash
[all:vars]
ansible_python_interpreter=/usr/bin/python3
```

* Verify inventory settings `ansible-inventory --list -y`

## Localhost

* Run specific commands with `localhost`

`ansible localhost -m ping`

* Add local group entry with `localhost ansible_connection=local` in `/etc/ansible/hosts` to force local connection

`sudo vi /etc/ansible/hosts`

* Run playbooks to perform localhost tasks

`ansible-playbook -i local playbook.yml`
