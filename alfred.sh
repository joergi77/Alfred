####################################################
# Alfred it the butler of Bruce Wayne (Batman) and #
#  he will install all I need on my Ubuntu system  #
####################################################

cd Downloads
sudo su

## install aptitude
sudo apt-get install aptitude

## java
# java 8
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz
mkdir /home/joergi/dev
mkdir /home/joergi/dev/java
mv jdk-8u65-linux-x64.tar.gz /home/joergi/dev/java/
tar -xvzf jdk-8u65-linux-x64.tar.gz
rm /home/joergi/dev/java/jdk-8u65-linux-x64.tar.gz

# java 6
add-apt-repository ppa:webupd8team/java
apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
aptitude install -y -qq oracle-java6-installer

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
aptitude install -y -qq oracle-java6-set-default

## openvpn
aptitude install openvpn


## install filezilla
aptitude install filezilla


# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb


## install spotify
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
apt-get update
# 4. Install Spotify
aptitude install spotify-client


# Android adb tools
aptitude install android-tools-adb

        
# install 51-android.rules
curl --create-dirs -L -o /etc/udev/rules.d/51-android.rules -O -L https://raw.githubusercontent.com/snowdream/51-android/master/51-android.rules
chmod a+r /etc/udev/rules.d/51-android.rules
sudo service udev restart

# install telegram
wget https://tdesktop.com/linux 
mv linux /home/joergi/programs/telegram.tar.xz
cd /home/joergi/programs/
tar xf telegram.tar.xz

#vlc
sudo aptitude install vlc

# npm  + bower
sudo aptitude install npm
npm install -g bower


