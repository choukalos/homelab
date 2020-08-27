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

Build a local version of the image (don't git save this one)
``
git cone https://github.com/prometheus/snmp_exporter
cd snmp_exporter/generator/
docker build -t snmp-generator .
``

Then cd into this folder and do the following:
``
docker run -ti \
 -v $PWD/mibs:/root/.snmp/mibs \
 -v $PWD/generator.yml:/opt/generator.yml:ro \
 -v $PWD/:/opt/ \
 snmp-generator generate


