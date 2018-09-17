#!/bin/bash

echo "System detect"
echo
if [ -e /etc/centos-release ]
then
        echo "Votre systeme d'exploitation est CentOS"
else
        if [ -e /etc/debian_version ]
        then
                echo "Votre systeme d'exploitation est Debian"
        fi
fi
