#!/bin/bash
docker volume create portainer_data && \
#docker kill portainer && docker rm portainer && \
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    --privileged \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    # -l "traefik.enable=true" \
    # -l "traefik.http.routers.portainer.rule=Host(\`docker.arceus.box\`)" \
    # -l "traefik.http.routers.portainer.entrypoints=websecure" \
    # -l "traefik.http.services.portainer.loadbalancer.server.port=9443" \
    portainer/portainer-ce:latest
