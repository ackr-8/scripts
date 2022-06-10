#!/bin/bash

echo "What is the port of portainer (Defaults : 9000 for HTTP and 9443 for HTTPS) : "

read port

echo "What is the directory of portainer data : "

read data_dir

docker stop portainer
docker rm portainer
docker image rm portainer/portainer-ce
docker run -d -p $port:$port --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v $data_dir:/data portainer/portainer-ce:latest

echo "Updated portainer successfully"
