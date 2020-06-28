# The choukalos.org Home Lab

This repository is a collection of configuration files for the family home lab.
Each subdirectory has a `README.md` outlining what the service is, how to run it, and service particular information.

## Installation

The Docker directory uses `docker-compose.yml` file that will spin up the appropriate containers for you.

Installation is as simple as:
```
cd <project directory>
sudo docker-compose up -d
```

Some `docker-compose.yml` files are made for a specific architecture (x86-64, arm64, etc), so please keep that in mind if you are going to re-use these containers.

## The Home Lab

TODO Pic/Diagram

## Inspiration

I'm on my 5th major version of a home lab having started in the late 90's with older desktop machines. I'd like to thank all those who've helped me along the way and provided guidance/insight.  A few folks have Github repos that I've borrowed from that should be called out.

### Some sources of additional inspiration
Cool tidbits, Raspberry Pi Clusters, FAAS, Oh My!
* [Hosting a static site in Minio](https://blog.3xpl0its.xyz/2020/06/hosting-a-static-site-with-minio/)
* [Self Hosted Repo](https://github.com/subdavis/selfhosted)
* [K3s Ansible](https://github.com/rancher/k3s-ansible)
* [Alex Ellis for RPI/Clustering Goodness](https://blog.alexellis.io)
* [Alex Ellis FAASD for function as a service on RPIs](https://blog.alexellis.io/faasd-for-lightweight-serverless/)

Docker Based Homelabs
* [Brooks Homelab](https://github.com/bswinnerton/home-lab)
* [OhMyMndy Homelab](https://github.com/OhMyMndy/homelab)
* [Tom Moulard's Make My Server repo](https://github.com/tomMoulard/make-my-server) 

History of my Homelabs
### Late 90's
* Goals:     Play network games, listen to music while working
* Hardware:  10MB ethernet hub for 2 desktop machines (AMD K2s); connected to a 14.4kbaud modem
* Software:  Various 90's networked games, file share (SMB)
### 2001 - 2004 
* Goals:     DVR TV, no DVD fumbling, listen to music while working, network drive
* Hardware:  100MB wired home, 100MB ethernet switch, RF modulated broadcast (broadcast TV station from server), Dual Socket Pentium 3 server with 12 JBOD array, TV Tunner card (STD resolution only), 2 work stations (one with video editing; aka clip commercials), one work/video games, 2 XBOX's for video game parties, Linux Mame Cabinet/Jukebox
* Software   Linux on server, evolving to MythTV, windows on client/desktop machines, 2 MythTV media computers
### 2005 - 2007
* Goals:     Have a backup strategy, consolidate to one server, public web page and web tools via https
* Hardware:  100MB ethernet switche(s), AMD FX/Linux based server with 8 drives in RAID6, 3 MythTV media computers, OSX Laptop, 2 windows workstatios, windows work laptops
* Software   Linux on server/MythTV boxes, windows on client/desktop machines, 1 OSX laptop
### 2007 - 2019
* Goals:     Low Power/Quiet; Low effort streaming media, simple public web site, remote access to files/streaming media, file share
* Hardware:  100MB ethernet switche(s), Netgear --> Synology NAS, Boxee Box(s) --> AppleTV(s), on/off Desktop --> Raspberry PI cluster (RPIs -> RPI2s -> RPI3b/b+s), multiple clients (mac desktop/laptops, work windows laptops, chromebooks, mobile phones, tablets)
* Software:  File Share (SMB), Infuse (AppleTV), Plex (Docker), Ubooquity (Docker), LAMP Stack (RPI Magento, Public Web Site, Reporting Tool(s) -> various/self made), MySQL
### 2019 - current
* Goals:     Continue last version of goals, while staying low power; add in market research/experimentation with Home Security/Home Automation, 4K streaming
* Hardware:  1GB Ethernet in home, Orbi WiFi Router, Edge Router Lite, 24 port switch, several wifi access points, several home security/home automation in lab environment, updating to 4K TV/streaming devices, 2xXBOX Ones, multiple laptops, tablets, smart phones
* Software:  Synology suite, Plex, Infuse (AppleTV), Ubooquity, MySQL, MongoDB, Minecraft, Docker, K3S cluster*, Prometheus, Grafana

