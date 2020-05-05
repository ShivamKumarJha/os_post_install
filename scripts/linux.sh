#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"

docommon() {
    if [[ -e "/usr/bin/apt-get" ]]; then
        apt update -y
        apt upgrade -y
        apt install -f -y --allow-unauthenticated
        apt autoremove -y --allow-unauthenticated
        apt autoclean -y --allow-unauthenticated
        apt clean -y --allow-unauthenticated
    elif [[ -e "/usr/bin/pacman" ]]; then
        pacman -Syy --noconfirm
        pacman -Su --noconfirm
        pacman -Sc --noconfirm
    fi
}

docommon

# remove apps
PACKAGE_LIST=`cat "$PROJECT_DIR/lists/package_remove.txt" | sort -u`
for package in $PACKAGE_LIST; do
    echo -e '\033]2;'$package'\007'
    if [[ -e "/usr/bin/apt-get" ]]; then
        apt purge -y $package
    elif [[ -e "/usr/bin/pacman" ]]; then
        pacman -Rs --noconfirm $package
    fi
done

# install apps
PACKAGE_LIST=`cat "$PROJECT_DIR/lists/package_install.txt" | sort -u`
for package in $PACKAGE_LIST; do
    echo -e '\033]2;'$package'\007'
    if [[ -e "/usr/bin/apt-get" ]]; then
        apt install -y $package
    elif [[ -e "/usr/bin/pacman" ]]; then
        pacman -Syu --noconfirm $package
    fi
done

# repo
echo -e '\033]2;''repo''\007'
curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo
chmod a+x /usr/bin/repo

# android usb
echo -e '\033]2;''android-usb''\007'
curl --create-dirs -L -o /etc/udev/rules.d/51-android.rules -O -L https://raw.githubusercontent.com/snowdream/51-android/master/51-android.rules
chmod a+r /etc/udev/rules.d/51-android.rules
service udev restart

# more packages
wget -O /usr/local/bin/gdrive https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
chmod a+x /usr/local/bin/gdrive
docommon
if [[ -e "/usr/bin/apt-get" ]]; then
    # Chrome
    echo -e '\033]2;''google-chrome''\007'
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list
    apt update -y
    apt install -y google-chrome-stable
    # nodejs
    echo -e '\033]2;''nodejs''\007'
    apt install -y nodejs
    # Transmission
    echo -e '\033]2;''transmission''\007'
    add-apt-repository -y ppa:transmissionbt/ppa
    apt update -y
    apt install -y transmission
    # monitor
    [[ ! -e /usr/share/applications/mate-system-monitor.desktop ]] && apt install -y gnome-system-monitor
elif [[ -e "/usr/bin/pacman" ]]; then
    echo -e '\033]2;''installing-some-apps''\007'
    pacman -Syu --noconfirm chromium
    pacman -Syu --noconfirm nodejs
    pacman -Syu --noconfirm transmission-gtk
    pacman -Syu --noconfirm bash-completion
fi

# VS Code
aria2c -x16 https://az764295.vo.msecnd.net/stable/2aae1f26c72891c399f860409176fe435a154b13/code_1.44.0-1586345345_amd64.deb
[[ -e "code_1.44.0-1586345345_amd64.deb" ]] && dpkg -i code_1.44.0-1586345345_amd64.deb
rm -rf code_1.44.0-1586345345_amd64.deb

docommon
