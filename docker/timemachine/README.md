# Timemachine

Docker container to handle time machine backup from multiple macs in the home network.  

# Details

Note that later versions of Mac OSX use Samba, not afp, for time machine.  I found many blog posts using old afp based containers that didn't work.  This [post](https://alexlubbock.com/time-machine-network-backup-linux)  pointed me in the right direction

I have a dual USB hard drive adapter connected to the server.  The container creates multiple mount points for each machine that needs to be backed up.


