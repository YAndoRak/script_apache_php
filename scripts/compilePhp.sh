#!/bin/bash
#Compilation de php
echo
echo "Compilation de php"
echo
cd php-4.4.9
echo "Configuration en cours..."
bash configure --with-apxs=$HOME/apache_1.3.42/dev/bin/apxs --prefix=$HOME/php-4.4.9 --with-mysql --with-config-file-path=$HOME/php-4.4.9/lib/php.ini
sed -i 's/CFLAGS_CLEAN =/CFLAGS_CLEAN = -std=gnu90/' Makefile
sed -i 's/CPPFLAGS =/CPPFLAGS = -std=gnu90/' Makefile
make clean
make
make install
cd ..
