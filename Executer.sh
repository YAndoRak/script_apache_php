#!/bin/bash
cp scripts/*.sh /home/dev
echo "Fichier copier"
sudo adduser dev
sudo usermod -aG sudo dev
sudo chown dev /home/dev/*.gz
sudo chown dev /home/dev/*.sh
sudo chmod 755 /home/dev/*.gz
sudo chmod 755 /home/dev/*.sh
echo "Veuillez executer le fichier Installer.sh avec < sudo bash Installer.sh >"
su -c "sudo bash scripts/Installer.sh" -s /bin/bash dev
su - dev
