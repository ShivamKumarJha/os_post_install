#!/bin/bash

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null && pwd )"

install_vscode_extensions() {
    LIST=$( cat ${PROJECT_DIR}/lists/vscode.txt )
    for ITEM in $LIST; do
        code --user-data-dir $HOME --install-extension $ITEM
    done
}

URL_GDRIVE_MAC="https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-osx-x64"
URL_GDRIVE_LINUX="https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64"
URL_IDEAC="https://download.jetbrains.com/idea/ideaIC-2020.1.1.tar.gz"
URL_ANDROID_STUDIO="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.0.0.16/android-studio-ide-193.6514223-linux.tar.gz"
URL_VSCODE="https://az764295.vo.msecnd.net/stable/5763d909d5f12fe19f215cbfdd29a91c0fa9208a/code_1.45.1-1589445302_amd64.deb"

