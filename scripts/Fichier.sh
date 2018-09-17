#!/bin/bash

#verifier si fichier existe ou non sinon telecharger
if [ -e apache_1.3.42 ]
        then
        echo "Le fichier existe deja"
        elif [ -e apache_1.3.42.tar.gz ] #Si l'archive existe deja"
        then
        echo "Extraction du fichier"
        sudo tar -xvf apache_1.3.42.tar.gz
        else
        echo "Telechargement du fichier"
        #wget download
                sudo -u dev wget https://archive.apache.org/dist/httpd/apache_1.3.42.tar.gz --directory-prefix=/home/dev/
            echo "Extraction"
        sudo tar -xvf apache_1.3.42.tar.gz
        fi
if [ -e php-4.4.9 ]
    then
        echo "Le fichier existe deja"
    elif [ -e php-4.4.9.tar.gz ] #Si l'archive existe deja"
    then
        echo "Extraction du fichier"
        sudo tar -xvf php-4.4.9.tar.gz
    else
        echo "Telechargement du fichier"
        #wget download
        sudo -u dev wget http://museum.php.net/php4/php-4.4.9.tar.gz --directory-prefix=/home/dev/
        echo "Extraction"
        sudo tar -xvf php-4.4.9.tar.gz
fi

