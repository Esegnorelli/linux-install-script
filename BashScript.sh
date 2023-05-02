#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #
PPA_LIBRATBAG="ppa:libratbag-piper/piper-libratbag-git"
PPA_LUTRIS="ppa:lutris-team/lutris"

URL_WINE_KEY="https://dl.winehq.org/wine-builds/winehq.key"
URL_PPA_WINE="https://dl.winehq.org/wine-builds/ubuntu/"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

PROGRAMAS_PARA_INSTALAR=(
  snapd
  mint-meta-codecs
  winff
  guvcview
  virtualbox
  flameshot
  nemo-dropbox
  steam-installer
  steam-devices
  steam:i386
  ratbagd
  piper
  lutris
  libvulkan1
  libvulkan1:i386
  libgnutls30:i386
  libldap-2.4-2:i386
  libgpg-error0:i386
  libxml2:i386
  libasound2-plugins:i386
  libsdl2-2.0-0:i386
  libfreetype6:i386
  libdbus-1-3:i386
  libsqlite3-0:i386
)

# ----------------------------- FUNÇÕES ----------------------------- #
remove_locks() {
  sudo rm /var/lib/dpkg/lock-frontend
  sudo rm /var/cache/apt/archives/lock
}

add_repositories() {
  sudo dpkg --add-architecture i386
  sudo apt update -y

  sudo apt-add-repository "$PPA_LIBRATBAG" -y
  sudo add-apt-repository "$PPA_LUTRIS" -y
  wget -nc "$URL_WINE_KEY"
  sudo apt-key add winehq.key
  sudo apt-add-repository "deb $URL_PPA_WINE bionic main"
}

install_programs() {
  sudo apt update -y

  for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
    if ! dpkg -l | grep -q $nome_do_programa; then
      apt install "$nome_do_programa" -y
    else
      echo "[INSTALADO] - $nome_do_programa"
    fi
  done

  sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y
}

install_flatpak_snap() {
  flatpak install flathub com.obsproject.Studio -y

  sudo snap install spotify
  sudo snap install slack --classic
  sudo snap install skype --classic
  sudo snap install photogimp
}

update_and_cleanup() {
  sudo apt update && sudo apt dist-upgrade -y
  flatpak update
  sudo apt autoclean
  sudo apt autoremove -y
}

# ----------------------------- EXECUÇÃO ----------------------------- #
remove_locks
add_repositories
install_programs
install_flatpak_snap
update_and_cleanup
