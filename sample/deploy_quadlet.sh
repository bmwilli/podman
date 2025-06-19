#!/bin/bash
cp quadlet/* /etc/containers/systemd
cp wordpress.yml /etc/containers/systemd
systemctl daemon-reload
systemctl start wordpress-pod
systemctl status wordpress-pod
