#!/bin/bash
PODNAME=wordpress-pod

podman pod stop $PODNAME
podman pod rm $PODNAME
