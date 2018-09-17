#!/bin/bash
#Compilation apache
echo "Compilation d'apache"
cd apache_1.3.42
sudo bash ./configure --prefix=$HOME/ --enable-module=so 
find . -type f -name Makefile -exec sed -i 's/CFLAGS1=/CFLAGS1= -std=gnu90/' {} +
	sed -i 's/getline/apache_getline/' src/support/htdigest.c
	sed -i 's/getline/apache_getline/' src/support/htpasswd.c
	sed -i 's/getline/apache_getline/' src/support/logresolve.c
	make clean
	make
	make install

echo "Compilation apache terminer"
cd ..
