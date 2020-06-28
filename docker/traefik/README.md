# Traefik

Used as a reverse proxy to terminate SSL to various containers in the home lab.  Traefik runs in a docker container.  It listens for new containers, and if they have the right labels, it automatically fetches an SSL certificate from Let's encrypt.

The underlying container that runs Traefik exposes ports 80 and 443 and are forwarded from the router to the appropriate containers.

