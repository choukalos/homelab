#!/bin/bash
# D/L the  binary for node_exporter
# untar the zip file
# cd into the directory
# then run this script
sudo cp node_exporter /usr/local/bin/
sudo chmod 755 /usr/local/bin/node_exporter 
sudo useradd -m -s /bin/bash node_exporter
sudo mkdir /var/lib/node_exporter
sudo chown -R node_exporter:node_exporter /var/lib/node_exporter
sudo cp ../node_exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable node_exporter.service
sudo systemctl start node_exporter.service
