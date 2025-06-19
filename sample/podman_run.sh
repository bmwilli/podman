#!/bin/bash

# This is how I usually get started with a pod.

PODNAME=wordpress

podman pod create \
  -p 80:80 \
  $PODNAME

podman run -d \
  --pod $PODNAME \
  --name db \
  --env MARIADB_ROOT_PASSWORD="passw0rd" \
  --env MARIADB_DATABASE="wordpress" \
  --env MARIADB_USER="wordpress" \
  --env MARIADB_PASSWORD="w0rdpr3ss" \
  docker.io/library/mariadb:lts-ubi

podman run -d \
  --pod $PODNAME \
  --name app \
  --env WORDPRESS_DB_HOST="db" \
  --env WORDPRESS_DB_NAME="wordpress" \
  --env WORDPRESS_DB_USER="wordpress" \
  --env WORDPRESS_DB_PASSWORD="w0rdpr3ss" \
  docker.io/library/wordpress:latest
