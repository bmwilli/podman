#!/bin/bash
PODNAME=wordpress

podman pod stop $PODNAME
podman pod rm $PODNAME
