#!/bin/bash

source scripts/links.sh || exit 1

if [[ "$OSTYPE" == "darwin"* ]]; then
    # xcode
    xcode-select --install
    while [ ! -d /Library/Developer/CommandLineTools/ ]; do sleep 1; done
    sleep 30
    # macports
    sudo installer -pkg pkg/MacPorts-2.6.2-10.15-Catalina.pkg -target /
    export PATH=/opt/local/bin:$PATH
    export PATH=/usr/local/bin:$PATH
    POSIXLY_CORRECT=1 sudo port install gmake libsdl git gnupg
    # pip
    sudo easy_install pip
    # Homebrew
    if test ! $(which brew); then
        echo "Installing homebrew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
    brew update
    LIST=$( cat lists/brew_cask.txt )
    for ITEM in $LIST; do
        brew cask install $ITEM
    done
    LIST=$( cat lists/brew_install.txt )
    for ITEM in $LIST; do
        brew install $ITEM
    done
    brew tap homebrew/cask-fonts
    brew cask install font-fira-code
    brew cleanup
    # vscode
    install_vscode_extensions
    # gdrive
    mkdir -p ~/bin/
    aria2c -q -s 16 -x 16 ${URL_GDRIVE_MAC} -d ~/bin/ -o gdrive
    chmod +x ~/bin/gdrive
    # bash
    cat confs/darwin/bash_profile >> ~/.zprofile
    cat confs/darwin/inputrc > ~/.inputrc
    cat confs/mybash.sh > ~/mybash.sh
    chmod +x ~/mybash.sh
    # compaudit
    sudo chmod -R 755 /usr/local/share/zsh
    sudo chmod -R 755 /usr/local/share/zsh/site-functions
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    if [ "$EUID" -ne 0 ]; then
        echo "Please run as root"
        exit 1
    fi
    bash scripts/linux.sh
    bash scripts/linux_ide.sh
    if ! cat ~/.bashrc | grep "source ~/mybash.sh"; then
        echo "[[ -e ~/mybash.sh ]] && source ~/mybash.sh" >> ~/.bashrc
    fi
    [[ -e ~/mybash.sh ]] && rm -rf ~/mybash.sh
    cat confs/mybash.sh > ~/mybash.sh
    chmod +x ~/mybash.sh
fi

# pip
LIST=$( cat lists/pip.txt )
for ITEM in $LIST; do
    pip3 install $ITEM
done
