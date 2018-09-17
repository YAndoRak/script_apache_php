#!/bin/bash
cp scripts/*.sh /home/dev
echo "Fichier copier"
sudo adduser dev

echo "Veuillez executer le fichier Installer.sh avec < sudo bash Installer.sh >"
su - dev
