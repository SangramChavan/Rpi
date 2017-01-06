sudo apt-get update

#Essential 
sudo apt-get install build-essential -y
sudo apt install yum -y
sudo apt-get install curl -y
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
sudo apt install uget -y                                #Installing Download Manager
sudo apt-get install firefox -y                         #Firefox
sudo apt-get install vlc browser-plugin-vlc -y          #VLC player
sudo apt-get remove totem-gstreamer totem-common -y     #Remove Videos

#################################################################################################################################

#Developer 
sudo apt install vim -y                                 #Vim update
sudo apt-get install xclip                              #Required to generate a SSH key for GitHub
curl -sSL https://get.docker.com/ | sh                  #Docker
sudo apt-get install apache2 -y                         #Apache2
sudo apt-get install mysql-server -y                    #mysql
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y             #php
sudo apt-get install phpmyadmin -y                      #phpmyadmin


#Node
wget https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.xz  #Download Nodejs
mv node-v6.9.2-linux-x64 node
sudo cp -r node/{bin,include,lib,share} /usr/
node -v

#App Developer
sudo npm install -g cordova       #Cordova
sudo npm install -g ionic         #Ionic

#Installing Heroku
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get install heroku -y
heroku --version

#################################################################################################################################

#Pre-Install WordPress Steps
mysql -u root -p                        #Login to the MySQL or MariaDB database as root user
CREATE DATABASE wordpressdb;
CREATE USER wordpressuser@localhost IDENTIFIED BY 'wordpresspassword';    #User ID - wordpressuser Password - wordpresspassword     
GRANT ALL PRIVILEGES ON wordpressdb.* TO wordpressuser@localhost;
FLUSH PRIVILEGES;                       #Then exit the MySQL shell
exit
#Restart services
service apache2 restart
service mysql restart

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
sudo apt autoremove -y
