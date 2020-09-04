# Prometheus

Prometheus is a time series DB that is the underlying datastore for Grafana.  It operates on a pull model to getch metrics.

## Details

Containers used in this docker-compose file.
* cAdvisor ; tool that anlyzes resource usage and performance characteristics of running containers; easily feeds data into prometheus
* (future) SNMP exporter ; tool to extract data from SNMP for my Synology, Orbi, & Edge router devices so I can get data into prometheus.  It reads MIBs (you need to d/l for each device) and generates a snmp.yml file

## How to Generate snmp.yml file using SNMP exporter

Download your device(s) MIBs
* Ubiquiti stores the MIBs on the device in /usr/share/snmp/mibs/
* Orbi MIBs are found ...
* Synology MIBs are found ...

Create a generator.yml file based on the mibs you want to scrape.  Frankly I don't get this so I googled for the device I was interested in and found someone else's generator.yml which I then copied/pasted in and ran the exporter until I got a cleanly generated snmp.yml file out.

To run the exporter pointing at your mibs directory with the generator.yml you created:

``
sudo docker run -it -v $PWD/mibs:/root/.snmp/mibs -v $PWD/generator.yml:/opt/generator.yml:ro -v $PWD/:/opt/ snmp-generator 
``

This command runs a docker image passing in your generator.yml and the mibs you've collected and creates an snmp.yml file



