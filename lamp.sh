#!/bin/sh
sudo apt-get -y update

sudo apt-get -y install apache2 php php-mysql 
sudo apt-get -y install libapache2-mod-php php-mysql

sudo sed -i '/^[ \t]*<IfModule mod_dir.c>/,/^[ \t]*<\/IfModule>/c\<IfModule mod_dir.c>\n DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm \n <\/IfModule>' /etc/apache2/mods-enabled/dir.conf

sudo apachectl restart

git clone https://grensdevops@dev.azure.com/grensdevops/phpproj/_git/PHP /var/www/html/php
