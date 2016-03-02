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

apt-get update -y --force-yes 

echo -e "$yellow Installing applications..."
apt-get install -y --force-yes adobe-flashplugin
apt-get install -y --force-yes vlc 
apt-get install -y --force-yes vlc-plugin-libde265
apt-get install -y --force-yes google-chrome-stable 
apt-get install -y --force-yes gimp 
apt-get install -y --force-yes gimp-data 
apt-get install -y --force-yes gimp-plugin-registry 
apt-get install -y --force-yes gimp-data-extras 
apt-get install -y --force-yes flashplugin-installer 
apt-get install -y --force-yes unace 
apt-get install -y --force-yes unrar 
apt-get install -y --force-yes unzip 
apt-get install -y --force-yes p7zip-full 
apt-get install -y --force-yes p7zip-rar 
apt-get install -y --force-yes sharutils 
apt-get install -y --force-yes rar 
apt-get install -y --force-yes unrar 
apt-get install -y --force-yes uudeview 
apt-get install -y --force-yes mpack 
apt-get install -y --force-yes arj 
apt-get install -y --force-yes cabextract 
apt-get install -y --force-yes transmission
apt-get install -y --force-yes geany
apt-get install -y --force-yes gparted
apt-get install -y --force-yes udisks
apt-get install -y --force-yes simplescreenrecorder

echo -e "$yellow Setting up Android Build Environment..."
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
apt-get install -y --force-yes phablet-tools
apt-get install -y --force-yes repo
apt-get install -y --force-yes maven
apt-get install -y --force-yes libcap-dev texinfo
apt-get install -y --force-yes python-pip
pip install backports.ssl_match_hostname
apt-get install -y --force-yes liblzma-dev
apt-get install -y --force-yes libpython2.7-dev python-numpy
git clone git://github.com/peterjc/backports.lzma.git
cd backports.lzma
python setup.py install
cd test
python test_lzma.py
apt-get install -y --force-yes git 
apt-get install -y --force-yes git-review
apt-get install -y --force-yes android-tools-adb android-tools-fastboot
apt-get install -y --force-yes bison 
apt-get install -y --force-yes build-essential 
apt-get install -y --force-yes curl 
apt-get install -y --force-yes flex 
apt-get install -y --force-yes pngquant
apt-get install -y --force-yes gnupg 
apt-get install -y --force-yes gperf 
apt-get install -y --force-yes libesd0-dev 
apt-get install -y --force-yes liblz4-tool 
apt-get install -y --force-yes libncurses5-dev 
apt-get install -y --force-yes libsdl1.2-dev 
apt-get install -y --force-yes libwxgtk2.8-dev 
apt-get install -y --force-yes libxml2 
apt-get install -y --force-yes libxml2-utils 
apt-get install -y --force-yes lzop 
apt-get install -y --force-yes pngcrush 
apt-get install -y --force-yes schedtool 
apt-get install -y --force-yes squashfs-tools 
apt-get install -y --force-yes xsltproc 
apt-get install -y --force-yes zip 
apt-get install -y --force-yes zlib1g-dev
apt-get install -y --force-yes g++-multilib 
apt-get install -y --force-yes gcc-multilib 
apt-get install -y --force-yes lib32ncurses5-dev 
apt-get install -y --force-yes lib32readline-gplv2-dev 
apt-get install -y --force-yes lib32z1-dev
apt-get install -y --force-yes openjdk-7-jdk
apt-get install -y --force-yes bison g++-multilib git gperf libxml2-utils make python-networkx zlib1g-dev:i386 zip
apt-get install -y --force-yes git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
apt-get install -y --force-yes git gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev libc6-dev lib32ncurses5-dev ia32-libs \
  x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dev \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown \
  libxml2-utils xsltproc
apt-get update -y --force-yes && apt-get install -y --force-yes git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-6-jre openjdk-6-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib
echo -e "$yellow Android device screenshot utility"
apt-get -y --force-yes install yad avconv android-tools-adb
wget --header='Accept-Encoding:none' -O /usr/local/bin/android-screenshot https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot
chmod +x /usr/local/bin/android-screenshot
wget --header='Accept-Encoding:none' -O $HOME/.android-screenshot.conf https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot.conf
wget --header='Accept-Encoding:none' -O /usr/share/applications/android-screenshot.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot.desktop
wget --header='Accept-Encoding:none' https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/android-screenshot-install.sh
. ./android-screenshot-install.sh
echo -e "$yellow APK thumbnailer"
DISTRO=$(lsb_release -is 2>/dev/null)
[ "${DISTRO}" != "Ubuntu" ] && { zenity --error --text="This automatic installation script is for Ubuntu only"; exit 1; }
apt-get -y --force-yes install libfile-mimeinfo-perl gvfs-bin unzip imagemagick python-nautilus
wget --header='Accept-Encoding:none' http://bernaerts.dyndns.org/download/ubuntu/android-tools-aapt_4.2.2_$ARCHI.deb
dpkg -i android-tools-aapt_*.deb
wget --header='Accept-Encoding:none' -O /usr/local/sbin/apk-thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/apk-thumbnailer/apk-thumbnailer
chmod +x /usr/local/sbin/apk-thumbnailer
wget --header='Accept-Encoding:none' -O /usr/share/thumbnailers/apk.thumbnailer https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/apk-thumbnailer/apk.thumbnailer
wget --header='Accept-Encoding:none' https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/thumbnailer/apk/apk-thumbnailer-install.sh
. ./apk-thumbnailer-install.sh
echo -e "$yellow file manager APK extensions"
mkdir --parents $HOME/.local/share/nautilus-python/extensions
wget --header='Accept-Encoding:none' -O $HOME/.local/share/nautilus-python/extensions/apk-columns.py https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus-extensions/apk-columns.py
wget --header='Accept-Encoding:none' -O $HOME/.local/share/nautilus-python/extensions/apk-properties.py https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus-extensions/apk-properties.py

echo -e "$yellow Installing Apps which may require user attention..."
apt-get install -y --force-yes ubuntu-restricted-extras

apt-get -f --force-yes update

echo -e "$yellow Removal of default unrequired apps."
apt-get remove -y --force-yes rhythmbox ekiga totem* ubuntu-one* unity-lens-music unity-lens-friends unity-lens-photos unity-lens-video thunderbird* apport
apt-get remove -y --force-yes firefox

echo -e "$yellow Removal of NSA PRISM search tools provided by unity."
gsettings set com.canonical.Unity.Lenses remote-content-search none

echo -e "$yellow Clean packages downloaded"
aptitude autoclean -y

echo -e "$yellow Cleaning Up"; 
apt-get -f -y --force-yes install 
apt-get -y --force-yes autoremove 
apt-get -y --force-yes autoclean 
apt-get -y --force-yes clean

apt-get update -y --force-yes 

exit

echo -e "$yellow Pulse Audio Installation..."
wget http://cgit.freedesktop.org/pulseaudio/pulseaudio/plain/src/utils/qpaeq -O /tmp/qpaeq
sudo install /tmp/qpaeq /usr/local/bin/
apt-get install -y --force-yes python-dbus python-qt4 python-qt4-dbus pulseaudio-utils
apt-get install -y --force-yes pulseaudio-equalizer
pulseaudio -k
pactl load-module module-equalizer-sink
pactl load-module module-dbus-protocol
rm -rf ~/.config/pulse
rm -rf ~/.pulse

