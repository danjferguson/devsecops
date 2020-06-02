# Configure Ubuntu 18.04 LTS

## Hostname

* Use `hostnamectl` to set the hostname

`sudo hostnamecctl set-hostname new-hostname`

* Edit `/etc/hosts` with appropriate hostname

`sudo vi /etc/hosts`

* Verify `cloud-init` package is installed by running `$ls -l /etc/cloud/cloud.cfg`

* If output shows `cloud.cfg` file details, change the `preserve_hostname` value from `false` to `true`

`sudo vi /etc/cloud/cloud.cfg`

* Verify the hostname change with `hostnamectl`

## IP Address

* Find the name of the of the networking interface EXAMPLES: `eth0, enp0s3, enp0s31f6`

`ip a`

* Use Netplan by creating the appropriate configuration file in the `/etc/netplan/` directory

* The default netplan configurration file is `50-cloud-init.yaml` using DHCP has the following content:

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: yes
```

* Set the netplan configuration file to a static IP on the same ethernet device

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: no
      addresses: [192.168.100.10/24]
      gateway4: 192.168.100.1
      nameservers:
        addresses: [9.9.9.9,1.1.1.1]
```

* Apply the changes using `netplan` add `--debug` if you're running into issues

`sudo netplan apply`

