# CentOS Strean 8 Setup

Downloaded from: mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/

Server /w GUI package

user (administrator account)
root account

ssh-copy-id user login

sudo dnf update
sudo systemctl enable --now cockpit.socket

login via https://hostname:9090

dnf install git tmux

pvcreate /dev/sdb
vgcreate storage /dev/sdb
lvcreate -n data -L 1TB storage /dev/sdb
vgextend storage /dev/sdc
lvcreate -n metadata -L 32GB storage /dev/sdc
lvcreate -n cache -L 180GB storage /dev/sdc
lvconvert --type cache-pool --poolmetadata storage/metadata storage/cache
lvconvert --type cache --cachepool storage/cache storage/data
