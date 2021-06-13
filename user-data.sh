#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2
yum install -y mariadb-server
yum install -y httpd php php-xml php-mbstring php-zip php-intl
cd /usr/local/src/
wget http://downloads.ec-cube.net/src/eccube-4.0.4.zip
unzip eccube-4.0.4.zip
mv eccube-4.0.4 /var/www/html/ec
chown -R apache:apache /var/www/html/
echo -e '<Directory "/var/www/html/ec">\n AllowOverride All\n</Directory>' > /etc/httpd/conf.d/ec.conf
systemctl start mariadb
mysql -u root -e "CREATE DATABASE ecdb DEFAULT CHARACTER SET utf8;CREATE USER 'ecuser'@'localhost' IDENTIFIED BY 'ecpass';GRANT ALL PRIVILEGES ON ecdb.* TO 'ecuser'@'localhost';FLUSH PRIVILEGES;"
systemctl start httpd