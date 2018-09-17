#!/bin/bash

echo "System detect"
echo
if [ -e /etc/centos-release ]
then
        echo "Votre systeme d'exploitation est CentOS"
        if(grep -E '^7\.' /etc/centos-release > /dev/null)
        then
                echo "CentOS version 7"
                echo
                sudo bash centos_prerequis.sh
                sudo bash compileApache.sh
        fi
else
        if [ -e /etc/debian_version ]
        then
                echo "Votre systeme d'exploitation est Debian"
                if (grep -E '^9\.' /etc/debian_version > /dev/null)
                then
                        echo "Debian version 9"
                        echo
                        sudo bash debian_prerequis.sh
                        sudo bash compileApache.sh
                fi
        fi
fi
