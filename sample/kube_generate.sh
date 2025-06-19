#!/bin/bash
PODNAME=wordpress-pod

podman kube generate $PODNAME >> $PODNAME.yml
