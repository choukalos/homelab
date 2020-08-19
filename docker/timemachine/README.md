# Timemachine

Network Drive Time Machine backup service for MAC computers

## Details

* Using https://github.com/odarriba/docker-timemachine Docker container
* Create an account like so (as a Docker exec)
** timemachine add-account USERNAME PASSWORD VOL_NAME VOL_ROOT [VOL_SIZE_MB]

Need to expose ports:
* 548
* 636

Requires Avahi is installed on the server so the mac being backed up will see the service


