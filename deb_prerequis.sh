#!/bin/bash

echo "Installation des prerequis pour Debian"
sudo apt-get update
sudo apt-get install -y sudo perl autotools-dev libtool flex bison perl --install-recommends --fix-missing
echo "Installation Terminer"
