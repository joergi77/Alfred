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
#not working
#wget --no-check-certificate --no-cookies --header "Cookie:  s_nr=1359635827494; s_cc=true; gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjava-archive-downloads-javase6-419409.html;" http://download.oracle.com/otn/java/jdk/6u45-b06/jdk-6u45-linux-x64.bin

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



