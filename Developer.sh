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
sudo apt install composer -y                            #composer


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

sudo apt autoremove -y
