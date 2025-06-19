#!/bin/bash
PODNAME=wordpress

podman kube generate $PODNAME >> $PODNAME.yml
