# Mac or Linux
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export PS1="\w$ "
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # set the number of open files to be 1024
    ulimit -S -n 1024
    # PATH
    export ANDROID_JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi

# ENVIRONMENT PATHS
export CCACHE_EXEC=$(which ccache)
ENVPATHS=(
    $ANDROID_JAVA_HOME/bin
    $HOME/Library/Android/sdk/platform-tools
    $HOME/Library/Android/sdk/tools/bin
    $HOME/bin
    $HOME/platform-tools/
    $HOME/Android/Sdk/platform-tools/
    $HOME/Android/Sdk/tools/bin
    /opt/local/bin
    /opt/local/sbin
    /usr/local/lib/ruby/gems/2.7.0/bin
    /usr/local/opt/bc/bin
    /usr/local/opt/binutils/bin
    /usr/local/opt/bison/bin
    /usr/local/opt/ccache/libexec
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/curl/bin
    /usr/local/opt/ed/libexec/gnubin
    /usr/local/opt/file-formula/bin
    /usr/local/opt/findutils/libexec/gnubin
    /usr/local/opt/flex/bin
    /usr/local/opt/gettext/bin
    /usr/local/opt/gnu-getopt/bin
    /usr/local/opt/gnu-indent/libexec/gnubin
    /usr/local/opt/gnu-sed/libexec/gnubin
    /usr/local/opt/gnu-tar/libexec/gnubin
    /usr/local/opt/gnu-which/libexec/gnubin
    /usr/local/opt/grep/libexec/gnubin
    /usr/local/opt/icu4c/bin
    /usr/local/opt/icu4c/sbin
    /usr/local/opt/krb5/bin
    /usr/local/opt/krb5/sbin
    /usr/local/opt/libressl/bin
    /usr/local/opt/libxml2/bin
    /usr/local/opt/m4/bin
    /usr/local/opt/make/libexec/gnubin
    /usr/local/opt/ncurses/bin
    /usr/local/opt/openssl@1.1/bin
    /usr/local/opt/python@3.8/bin
    /usr/local/opt/ruby/bin
    /usr/local/opt/sqlite/bin
    /usr/local/opt/unzip/bin
    /usr/local/opt/zip/bin
)
for ELEMENT in ${ENVPATHS[@]}; do
    [[ -d $ELEMENT ]] && export PATH="$ELEMENT:$PATH"
done

export LC_ALL=C make

function sysupdate() {
    if [[ -e "/usr/bin/apt-get" ]]; then
        sudo apt update -y
        sudo apt upgrade -y
        sudo apt install -f -y --allow-unauthenticated
        sudo apt autoremove -y --allow-unauthenticated
        sudo apt autoclean -y --allow-unauthenticated
        sudo apt clean -y --allow-unauthenticated
    elif [[ -e "/usr/bin/pacman" ]]; then
        sudo pacman -Syy --noconfirm
        sudo pacman -Su --noconfirm
        sudo pacman -Sc --noconfirm
    elif [[ -e "/usr/local/bin/brew" ]]; then
        brew update
        brew upgrade
        brew cask upgrade
        brew cleanup
    fi
}
