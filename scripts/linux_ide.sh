#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"
mkdir -p ${PROJECT_DIR}/downloads

install_ideac() {
    URL="https://download-cf.jetbrains.com/idea/ideaIC-2020.1.tar.gz"
    FILE="$(echo ${URL##*/} | sed "s| |_|g" )"
    rm -rf ${PROJECT_DIR}/downloads/${FILE}
    echo "Downloading IdeaC"
    aria2c -q -s 16 -x 16 ${URL} -d ${PROJECT_DIR}/downloads -o ${FILE}
    sudo tar -xvf ${PROJECT_DIR}/downloads/${FILE} -C /opt/
    IDEACDIR="$(dirname "$(find /opt/idea* -type f -name "product-info.json" | head -1)")"
    sudo mv ${IDEACDIR} "/opt/ideac"
    cp -a ${PROJECT_DIR}/confs/linux/jetbrains-idea-ce.desktop /usr/share/applications/jetbrains-idea-ce.desktop
}

install_androidstudio() {
    URL="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/3.6.3.0/android-studio-ide-192.6392135-linux.tar.gz"
    FILE="$(echo ${URL##*/} | sed "s| |_|g" )"
    rm -rf ${PROJECT_DIR}/downloads/${FILE}
    echo "Downloading Android Studio"
    aria2c -q -s 16 -x 16 ${URL} -d ${PROJECT_DIR}/downloads -o ${FILE}
    sudo tar -xvf ${PROJECT_DIR}/downloads/${FILE} -C /opt/
    cp -a ${PROJECT_DIR}/confs/linux/jetbrains-studio.desktop /usr/share/applications/jetbrains-studio.desktop
}

[[ ! -d /opt/ideac/ ]] && install_ideac
[[ ! -d /opt/android-studio/ ]] && install_androidstudio