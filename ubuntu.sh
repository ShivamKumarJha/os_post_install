#!/bin/bash

yellow='\033[0;33m'

echo -e "$yellow Adding Repositories"
add-apt-repository -y ppa:webupd8team/pulseaudio-eq
add-apt-repository -y ppa:nilarimogard/webupd8
add-apt-repository -y ppa:videolan/stable-daily
add-apt-repository -y ppa:bumblebee/stable
add-apt-repository -y ppa:xorg-edgers/ppa
add-apt-repository -y ppa:otto-kesselgulasch/gimp
add-apt-repository -y ppa:gnome3-team/gnome3
apt-add-repository -y ppa:strukturag/libde265 
add-apt-repository -y ppa:webupd8team/y-ppa-manager
apt-add-repository -y 'deb http://liveusb.info/multisystem/depot all main'
add-apt-repository -y 'deb http://dl.google.com/linux/chrome/deb/ stable main'
add-apt-repository -y ppa:flexiondotorg/hal-flash
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/arc-theme.list"

apt-get update -y 

echo -e "$yellow Installing applications..."
apt-get install -y --allow-unauthenticated libhal1-flash
apt-get install -y --allow-unauthenticated arc-theme
apt-get install -y --allow-unauthenticated unity-tweak-tool
apt-get install -y --allow-unauthenticated adobe-flashplugin
apt-get install -y --allow-unauthenticated vlc 
apt-get install -y --allow-unauthenticated vlc-plugin-libde265
apt-get install -y --allow-unauthenticated google-chrome-stable 
apt-get install -y --allow-unauthenticated gimp 
apt-get install -y --allow-unauthenticated gimp-data 
apt-get install -y --allow-unauthenticated gimp-plugin-registry 
apt-get install -y --allow-unauthenticated gimp-data-extras 
apt-get install -y --allow-unauthenticated flashplugin-installer 
apt-get install -y --allow-unauthenticated unace 
apt-get install -y --allow-unauthenticated unrar 
apt-get install -y --allow-unauthenticated unzip 
apt-get install -y --allow-unauthenticated p7zip-full 
apt-get install -y --allow-unauthenticated p7zip-rar 
apt-get install -y --allow-unauthenticated sharutils 
apt-get install -y --allow-unauthenticated rar 
apt-get install -y --allow-unauthenticated unrar 
apt-get install -y --allow-unauthenticated uudeview 
apt-get install -y --allow-unauthenticated mpack 
apt-get install -y --allow-unauthenticated arj 
apt-get install -y --allow-unauthenticated cabextract 
apt-get install -y --allow-unauthenticated transmission
apt-get install -y --allow-unauthenticated geany
apt-get install -y --allow-unauthenticated gparted
apt-get install -y --allow-unauthenticated udisks
apt-get install -y --allow-unauthenticated simplescreenrecorder

echo -e "$yellow Setting up Android Build Environment..."
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
apt-get install -y --allow-unauthenticated phablet-tools
apt-get install -y --allow-unauthenticated repo
apt-get install -y --allow-unauthenticated maven
apt-get install -y --allow-unauthenticated libcap-dev texinfo
apt-get install -y --allow-unauthenticated python-pip
pip install backports.ssl_match_hostname
apt-get install -y --allow-unauthenticated liblzma-dev
apt-get install -y --allow-unauthenticated libpython2.7-dev python-numpy
apt-get install -y --allow-unauthenticated git 
apt-get install -y --allow-unauthenticated git-review
apt-get install -y --allow-unauthenticated android-tools-adb android-tools-fastboot
apt-get install -y --allow-unauthenticated bison 
apt-get install -y --allow-unauthenticated build-essential 
apt-get install -y --allow-unauthenticated curl 
apt-get install -y --allow-unauthenticated flex 
apt-get install -y --allow-unauthenticated pngquant
apt-get install -y --allow-unauthenticated gnupg 
apt-get install -y --allow-unauthenticated gperf 
apt-get install -y --allow-unauthenticated libesd0-dev 
apt-get install -y --allow-unauthenticated liblz4-tool 
apt-get install -y --allow-unauthenticated libncurses5-dev 
apt-get install -y --allow-unauthenticated libsdl1.2-dev 
apt-get install -y --allow-unauthenticated libwxgtk2.8-dev 
apt-get install -y --allow-unauthenticated libxml2 
apt-get install -y --allow-unauthenticated libxml2-utils 
apt-get install -y --allow-unauthenticated lzop 
apt-get install -y --allow-unauthenticated pngcrush 
apt-get install -y --allow-unauthenticated schedtool 
apt-get install -y --allow-unauthenticated squashfs-tools 
apt-get install -y --allow-unauthenticated xsltproc 
apt-get install -y --allow-unauthenticated zip 
apt-get install -y --allow-unauthenticated zlib1g-dev
apt-get install -y --allow-unauthenticated g++-multilib 
apt-get install -y --allow-unauthenticated gcc-multilib 
apt-get install -y --allow-unauthenticated lib32ncurses5-dev 
apt-get install -y --allow-unauthenticated lib32readline-gplv2-dev 
apt-get install -y --allow-unauthenticated lib32z1-dev
apt-get install -y --allow-unauthenticated openjdk-7-jdk
apt-get install -y --allow-unauthenticated bison g++-multilib git gperf libxml2-utils make python-networkx zlib1g-dev:i386 zip
sudo apt-get install -y --allow-unauthenticated git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils xsltproc unzip
apt-get install -y --allow-unauthenticated git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
apt-get install -y --allow-unauthenticated git gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs \
  x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dev \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown \
  libxml2-utils xsltproc
apt-get update -y --allow-unauthenticated && apt-get install -y --allow-unauthenticated git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-6-jre openjdk-6-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib
apt-get -y --allow-unauthenticated install libfile-mimeinfo-perl gvfs-bin unzip imagemagick python-nautilus
apt-get install -y --allow-unauthenticated git ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven
apt-get install -y --allow-unauthenticated openjdk-8-jdk

echo -e "$yellow Installing Apps which may require user attention..."
apt-get install -y --allow-unauthenticated ubuntu-restricted-extras

echo -e "$yellow Pulse Audio Installation..."
wget http://cgit.freedesktop.org/pulseaudio/pulseaudio/plain/src/utils/qpaeq -O /tmp/qpaeq
sudo install /tmp/qpaeq /usr/local/bin/
apt-get install -y --allow-unauthenticated python-dbus python-qt4 python-qt4-dbus pulseaudio-utils
apt-get install -y --allow-unauthenticated pulseaudio-equalizer
pulseaudio -k
pactl load-module module-equalizer-sink
pactl load-module module-dbus-protocol
rm -rf ~/.config/pulse
rm -rf ~/.pulse
apt-get install -y --allow-unauthenticated pulseaudio pavucontrol

echo -e "$yellow Set menu to always show..."
gsettings set com.canonical.Unity always-show-menus true

echo -e "$yellow Removal of default unrequired apps."
apt-get remove -y --allow-unauthenticated rhythmbox ekiga totem* ubuntu-one* unity-lens-music unity-lens-friends unity-lens-photos unity-lens-video thunderbird* apport
apt-get remove -y --allow-unauthenticated firefox gedit

echo -e "$yellow Removal of NSA PRISM search tools provided by unity."
gsettings set com.canonical.Unity.Lenses remote-content-search none

echo -e "$yellow Clean packages downloaded"
aptitude autoclean -y

echo -e "$yellow Cleaning Up"; 
apt-get -f -y --allow-unauthenticated install 
apt-get -y --allow-unauthenticated autoremove 
apt-get -y --allow-unauthenticated autoclean 
apt-get -y --allow-unauthenticated clean

apt-get update -y --allow-unauthenticated 

exit
