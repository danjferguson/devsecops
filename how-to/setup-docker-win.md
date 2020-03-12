# Docker on Windows

How-to setup Docker on Windows 10

## Install Docker

Run from administrative powershell window

Use ![Chocolatey Docker packages](https://chocolatey.org/packages?q=docker)

```powershell
choco install docker-cli
choco install docker-desktop
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
sudo apt install ifconfig
```

