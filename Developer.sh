sudo apt-get update

sudo apt install yum -y
sudo apt-get install curl -y

sudo apt install vim -y                                 #Vim update
sudo apt-get install build-essential -y
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
sudo apt install uget -y                                #Installing Download Manager
sudo apt-get install firefox -y                         #Firefox
sudo apt-get install vlc browser-plugin-vlc -y          #VLC player
sudo apt-get remove totem-gstreamer totem-common -y     #Remove Videos
sudo apt-get install xclip                              #Required to generate a SSH key for GitHub
curl -sSL https://get.docker.com/ | sh                  #Docker
wget https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.xz  #Download Nodejs
mv node-v6.9.2-linux-x64 node
sudo cp -r node/{bin,include,lib,share} /usr/
node -v
sudo npm install -g cordova
sudo npm install -g ionic
