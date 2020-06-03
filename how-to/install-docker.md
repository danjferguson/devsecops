# Docker Install

How-to install Docker

## Windows

Run from administrative powershell window

Use ![Chocolatey Docker packages](https://chocolatey.org/packages?q=docker)

```powershell
choco install docker-cli
choco install docker-desktop
```

## Ubuntu

Run from terminal to install prerequisite software, register the Docker repository and install docker-ce

```bash
sudo apt install apt-transport-https ca-certificates software-properties-common curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-cache policy docker-ce
sudo apt update
sudo apt install docker-ce
```

## Docker Basics

- ![Docker Hub](https://hub.docker.com/)
- ![Docker CLI Reference](https://docs.docker.com/engine/reference/commandline/cli/) 

Launch an interactive docker container

```
docker run -t -i ubuntu bash
```

Install applications within container

```bash
apt update
apt install net-tools
```

## Kali Docker Image

Use Kali Images ![Kali on Docker Hub](https://hub.docker.com/u/kalilinux)

