# Monitoring

# on server
sudo apt-get install snmp snmp-mibs-downloader
sudo download-mibs
# Edit out 'mibs:' line in /etc/snmp/snmp.conf
# Download MIBS for Synology from https://global.download.synology.com/download/Document/MIBGuide/Synology_MIB_File.zip
# Download MIBS for Edgerouter from /usr/share/mibs/
# copy them into /home/$USER/.snmp/mibs/

# on MySQL Server
# setup mysql user 'my2'
# setup statistics stored proceedures; https://github.com/meob/my2Collector 
# Note uses Grafana dashboard 7991
