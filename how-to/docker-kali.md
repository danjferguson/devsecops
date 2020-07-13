# Running Kali with Docker

Find the Kali image on Docker Hub

<https://hub.docker.com/r/kalilinux/kali>

Pull the docker image

`docker pull kalilinux/kali`

Run Kali image interactively from command line

`docker run -ti kalilinux/kali`

Start/Stop/Delete Containers from VS code

Attach Shell on container using Docker Extension with VS Code

Update the kali packages and install the tools

```bash
apt update
apt dist-upgrade
apt autoremove
apt clean
```

List of metapackages is available here: <https://www.kali.org/news/kali-linux-metapackages/>

Install the desired metapackages

`apt install kali-linux-full man-db exploitdb`

Exit the kali shell

Find the container ID either by inspecting the container from the VS code GUI or using the docker command line

`docker ps -a`

Copy the container ID and run the command:

`docker commit <container-id> my-kali`

You can run the image as a container now with persistent data within your home folder.

`docker run -ti --rm -v $HOME/kali_root:/root my-kali`

The `-ti` option will run it interactively, and the `--rm` will delete the container when you are finished so that you don't consume resources on your computer. The `-v` means volume option. The `$HOME` is understood to mean no matter where you are running the command from. On the right of the colon is your folder locaton on your host computer and on the left side is the folder on the container.

Use the `/root` folder in the container to store your downloads, output files, and other data generated, when using the kali container. Make sure to be in your home folder `cd ~` before running commands, such as nmap. This will also contain a copy of your bash_history so you can review which commands you have run when using the container.
