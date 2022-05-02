#!/bin/sh -e

# The `uvt-simplestreams-libvirt` command provides the
# release for the MAAS host.

cd
sudo apt update
sudo apt full-upgrade -y
sudo apt install -y uvtool virtinst
sudo uvt-simplestreams-libvirt sync release=jammy arch=amd64
sudo snap install juju --classic
