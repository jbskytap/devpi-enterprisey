#!/bin/bash 

set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd DIR/debianized-devpi

sudo apt install devscripts dh-virtualenv debhelper -y

debuild -us
