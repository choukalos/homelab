# Timemachine

Network Drive Time Machine backup service for MAC computers in home

## Details and Setup

* Using https://github.com/odarriba/docker-timemachine Docker container
* Create an account like so (as a Docker exec)
** timemachine add-account USERNAME PASSWORD VOL_NAME VOL_ROOT [VOL_SIZE_MB]
* Connect your mac/save the network user/pass for the Timemachine server

Need to expose ports:
* 548
* 636

Requires Avahi is installed on the server so the mac being backed up will see the service
* sudo apt-get install avahi-daemon avahi-utils
* Copy docker image file avahi/nsswitch.conf to /etc/nsswitch.conf
* Copy service description file from avahi/afpd.service to /etc/avahi/services/afpd.service
* Restart machines avahi's daemon:  sudo /etc/init.d/avahi-daemon restart

