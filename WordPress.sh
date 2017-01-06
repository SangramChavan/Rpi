
#################################################################################################################################

#Pre-Install WordPress Steps
mysql -u root -p                        #Login to the MySQL or MariaDB database as root user
CREATE DATABASE wordpressdb;
CREATE USER wordpressuser@localhost IDENTIFIED BY 'wordpresspassword';    #User ID - wordpressuser Password - wordpresspassword     
GRANT ALL PRIVILEGES ON wordpressdb.* TO wordpressuser@localhost;
FLUSH PRIVILEGES;                       #Then exit the MySQL shell
exit
#Restart services
service mysql restart

sudo a2enmod rewrite                                          #Adding permalinks 
sudo apache2ctl configtest                                    #If AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.1.1. Set the 'ServerName' directive globally to suppress this message Syntax OK
sudo echo "ServerName localhost" >> /etc/apache2/apache2.conf  #Syntax OK
sudo echo "<Directory /var/www/html/>
               AllowOverride All
           </Directory>">> /etc/apache2/apache2.conf           #Enable .htaccess Overrides
sudo systemctl restart apache2

#Installing WordPress
cd /tmp
wget http://wordpress.org/latest.zip
apt-get install unzip
sudo unzip -q latest.zip -d /var/www/html/

#Now set appropriate permissions for the WordPress directory.
chown -R www-data:www-data /var/www/html/wordpress
chmod -R 755 /var/www/html/wordpress

#Further, we need to create the uploads directory beneath the wp-content directory at our document root. This will be the parent directory of our content
mkdir -p /var/www/html/wordpress/wp-content/uploads

#We need to allow the web server itself to write to this directory.
chown -R www-data:www-data /var/www/html/wordpress/wp-content/uploads

firefox http://localhost/wordpress/            #Open in web browser. The WordPress installer will show up.

##################################################################################################################################
