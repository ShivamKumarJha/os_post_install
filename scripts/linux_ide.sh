#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"
source ${PROJECT_DIR}/scripts/links.sh || exit 1
mkdir -p ${PROJECT_DIR}/downloads

if [[ "$EUID" == 0 ]]; then
    echo "Don't run as root!"
    exit 1
fi

install_ideac() {
    FILE="$( echo ${URL_IDEAC##*/} )"
    rm -rf ${PROJECT_DIR}/downloads/${FILE}
    echo "Downloading IdeaC"
    aria2c -x 16 ${URL_IDEAC} -d ${PROJECT_DIR}/downloads -o ${FILE}
    tar -xvf ${PROJECT_DIR}/downloads/${FILE} -C $HOME/
    IDEACDIR="$(dirname "$(find $HOME/idea* -type f -name "product-info.json" | head -1)")"
    mv ${IDEACDIR} "$HOME/ideac"
    cp -a ${PROJECT_DIR}/confs/linux/jetbrains-idea-ce.desktop ~/.local/share/applications/jetbrains-idea-ce.desktop
    chmod +x ~/.local/share/applications/jetbrains-idea-ce.desktop
}

install_androidstudio() {
    FILE="$( echo ${URL_ANDROID_STUDIO##*/} )"
    rm -rf ${PROJECT_DIR}/downloads/${FILE}
    echo "Downloading Android Studio"
    aria2c -x 16 ${URL_ANDROID_STUDIO} -d ${PROJECT_DIR}/downloads -o ${FILE}
    tar -xvf ${PROJECT_DIR}/downloads/${FILE} -C $HOME/
    cp -a ${PROJECT_DIR}/confs/linux/jetbrains-studio.desktop ~/.local/share/applications/jetbrains-studio.desktop
    chmod +x ~/.local/share/applications/jetbrains-studio.desktop
}

install_vscode() {
    FILE="$( echo ${URL_VSCODE##*/} )"
    rm -rf ${PROJECT_DIR}/downloads/${FILE}
    echo "Downloading VS Code"
    aria2c -x 16 ${URL_VSCODE} -d ${PROJECT_DIR}/downloads -o ${FILE}
    dpkg -i ${PROJECT_DIR}/downloads/${FILE}
    install_vscode_extensions
}

[[ ! -d $HOME/ideac/ ]] && install_ideac
[[ ! -d $HOME/android-studio/ ]] && install_androidstudio
[[ ! -e /bin/code ]] && install_vscode
