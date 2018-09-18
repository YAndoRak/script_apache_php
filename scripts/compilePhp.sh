#!/bin/bash
#Compilation de php
echo
echo "Compilation de php"
echo
cd php-4.4.9
echo "Configuration en cours..."
bash configure --with-apxs=/home/dev/apache_1.3.42/bin/apxs --prefix=/home/dev/php-4.4.9 --with-mysql --with-config-file-path=/home/dev/php-4.4.9/lib/php.ini
make clean
sed -i 's/CFLAGS_CLEAN =/CFLAGS_CLEAN = -std=gnu90/' Makefile
sed -i 's/CPPFLAGS =/CPPFLAGS = -std=gnu90/' Makefile

make
make install

cp php.ini-dist $HOME/lib/php.ini
sed -i 's/AddType application\/x-tar .tgz/AddType application\/x-tar .tgz\n     AddType application\/x-httpd-php .php/' $HOME/apache_1.3.42/conf/httpd.conf
sed -i 's/#Listen 3000/Listen 3300/' /home/dev/apache_1.3.42/conf/httpd.conf
sed -i 's/Port 8080/Port 3300/' /home/dev/apache_1.3.42/conf/httpd.conf

cd ..
