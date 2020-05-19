#!/bin/bash

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
    brew cleanup
    # gdrive
    mkdir -p ~/bin/
    aria2c -q -s 16 -x 16 https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-osx-x64 -d ~/bin/ -o gdrive
    chmod +x ~/bin/gdrive
    # bash
    cat confs/darwin/bash_profile >> ~/.zprofile
    cat confs/darwin/inputrc > ~/.inputrc
    cat confs/mybash.sh > ~/mybash.sh
    chmod +x ~/mybash.sh
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

# vs code
LIST=$( cat lists/vscode.txt )
for ITEM in $LIST; do
    code --user-data-dir $HOME --install-extension $ITEM
done
