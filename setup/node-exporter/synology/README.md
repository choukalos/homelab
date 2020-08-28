# Node-Exporter (Synology)

Approach to running Node-Exporter on a Synology NAS using Docker

## Details

Found this [blog post](https://www.codeless.me/posts/running-node-exporter-on-yo
ur-synology-nas/).

Steps
* SSH into NAS
* sudo su
* create and edit docker compose file using vi
* docker-compose up -d
* go to http://youripaddress:9100/metrics   to confirm node-exporter metrics
* now add the ip to your prometheus scrape job.

