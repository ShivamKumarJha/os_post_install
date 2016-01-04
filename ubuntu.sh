#!/bin/bash

yellow='\033[0;33m'

read -p "Please enter your username, this will help me fix permissions:" myname

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


wget -q -O - http://liveusb.info/multisystem/depot/multisystem.asc | apt-key add -
echo 'deb http://download.videolan.org/pub/debian/stable/ /' | tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|apt-key add -

echo -e "$yellow Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&
echo -e "$yellow Installing GetDeb" &&
dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&
echo -e "$yellow Installing PlayDeb" &&
dpkg -i playdeb_0.3-1~getdeb1_all.deb &&
echo -e "$yellow Deleting temporary files..." &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb

apt-get update -y

echo -e "$yellow Installing applications..."
apt-get install -y adobe-flashplugin
apt-get install -y vlc 
apt-get install -y vlc-plugin-libde265
apt-get install -y google-chrome-stable 
apt-get install -y gimp 
apt-get install -y cheese
apt-get install -y gimp-data 
apt-get install -y gimp-plugin-registry 
apt-get install -y gimp-data-extras 
apt-get install -y flashplugin-installer 
apt-get install -y unace 
apt-get install -y unrar 
apt-get install -y zip 
apt-get install -y unzip 
apt-get install -y p7zip-full 
apt-get install -y p7zip-rar 
apt-get install -y sharutils 
apt-get install -y rar 
apt-get install -y unrar 
apt-get install -y uudeview 
apt-get install -y mpack 
apt-get install -y arj 
apt-get install -y cabextract 
apt-get install -y transmission
apt-get install -y clementine
apt-get install -y geany
apt-get install -y gparted
apt-get install -y udisks
apt-get install -y simplescreenrecorder

echo -e "$yellow Pulse Audio Installation..."
wget http://cgit.freedesktop.org/pulseaudio/pulseaudio/plain/src/utils/qpaeq -O /tmp/qpaeq
sudo install /tmp/qpaeq /usr/local/bin/
apt-get install -y python-dbus python-qt4 python-qt4-dbus pulseaudio-utils
apt-get install -y pulseaudio-equalizer
pulseaudio -k
pactl load-module module-equalizer-sink
pactl load-module module-dbus-protocol
rm -rf ~/.config/pulse
rm -rf ~/.pulse


echo -e "$yellow Setting up Android Build Environment..."
apt-get install -y libcap-dev texinfo
apt-get install -y python-pip
pip install backports.ssl_match_hostname
apt-get install -y liblzma-dev
apt-get install -y libpython2.7-dev python-numpy
git clone git://github.com/peterjc/backports.lzma.git
cd backports.lzma
python setup.py install
cd test
python test_lzma.py
apt-get install -y git-review
apt-get install -y android-tools-adb android-tools-fastboot
apt-get install -y bison 
apt-get install -y build-essential 
apt-get install -y curl 
apt-get install -y flex 
apt-get install -y pngquant
apt-get install -y git 
apt-get install -y gnupg 
apt-get install -y gperf 
apt-get install -y libesd0-dev 
apt-get install -y liblz4-tool 
apt-get install -y libncurses5-dev 
apt-get install -y libsdl1.2-dev 
apt-get install -y libwxgtk2.8-dev 
apt-get install -y libxml2 
apt-get install -y libxml2-utils 
apt-get install -y lzop 
apt-get install -y pngcrush 
apt-get install -y schedtool 
apt-get install -y squashfs-tools 
apt-get install -y xsltproc 
apt-get install -y zip 
apt-get install -y zlib1g-dev
apt-get install -y g++-multilib 
apt-get install -y gcc-multilib 
apt-get install -y lib32ncurses5-dev 
apt-get install -y lib32readline-gplv2-dev 
apt-get install -y lib32z1-dev
apt-get install -y openjdk-7-jdk
apt-get install -y bison g++-multilib git gperf libxml2-utils make python-networkx zlib1g-dev:i386 zip
apt-get install -y git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
apt-get install -y git gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs \
  x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dev \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown \
  libxml2-utils xsltproc
apt-get update && apt-get install git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-6-jre openjdk-6-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib
echo -e "$yellow Android device screenshot utility"
sudo apt-get -y install yad avconv android-tools-adb
sudo wget --header='Accept-Encoding:none' -O /usr/local/bin/android-screenshot https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot
sudo chmod +x /usr/local/bin/android-screenshot
wget --header='Accept-Encoding:none' -O $HOME/.android-screenshot.conf https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot.conf
sudo wget --header='Accept-Encoding:none' -O /usr/share/applications/android-screenshot.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot.desktop
wget --header='Accept-Encoding:none' https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot-install.sh
. ./android-screenshot-install.sh
echo -e "$yellow APK thumbnailer"
DISTRO=$(lsb_release -is 2>/dev/null)
[ "${DISTRO}" != "Ubuntu" ] && { zenity --error --text="This automatic installation script is for Ubuntu only"; exit 1; }
sudo apt-get -y install libfile-mimeinfo-perl gvfs-bin unzip imagemagick python-nautilus
wget --header='Accept-Encoding:none' http://bernaerts.dyndns.org/download/ubuntu/android-tools-aapt_4.2.2_$ARCHI.deb
sudo dpkg -i android-tools-aapt_*.deb
sudo wget --header='Accept-Encoding:none' -O /usr/local/sbin/apk-thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/apk-thumbnailer/apk-thumbnailer
sudo chmod +x /usr/local/sbin/apk-thumbnailer
sudo wget --header='Accept-Encoding:none' -O /usr/share/thumbnailers/apk.thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/apk-thumbnailer/apk.thumbnailer
wget --header='Accept-Encoding:none' https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/thumbnailer/apk/apk-thumbnailer-install.sh
. ./apk-thumbnailer-install.sh
echo -e "$yellow file manager APK extensions"
mkdir --parents $HOME/.local/share/nautilus-python/extensions
wget --header='Accept-Encoding:none' -O $HOME/.local/share/nautilus-python/extensions/apk-columns.py https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus-extensions/apk-columns.py
wget --header='Accept-Encoding:none' -O $HOME/.local/share/nautilus-python/extensions/apk-properties.py https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus-extensions/apk-properties.py

echo -e "$yellow Installing Nvidia Drivers..."
apt-get install -y linux-headers-generic
apt-get install -y nvidia-current nvidia-settings
apt-get install -y bumblebee bumblebee-nvidia

echo -e "$yellow Installing Apps which may require user attention..."
apt-get install -y ubuntu-restricted-extras

apt-get update

echo -e "$yellow Removal of default useless apps."
apt-get remove -y --purge rhythmbox ekiga totem* ubuntu-one* unity-lens-music unity-lens-friends unity-lens-photos unity-lens-video thunderbird* apport

echo -e "$yellow Removal of NSA PRISM search tools provided by unity."
gsettings set com.canonical.Unity.Lenses remote-content-search none

echo -e "$yellow Clean packages downloaded"
aptitude autoclean -y

echo -e "$yellow Cleaning Up"; 
apt-get -f -y install 
apt-get -y autoremove 
apt-get -y autoclean 
apt-get -y clean

exit
