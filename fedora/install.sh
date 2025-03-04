
#Basic Gnome Apps
sudo dnf install gnome-system-monitor gnome-weather gnome-screenshot gnome-software blueman system-config-printer qt5ct wmctrl xdpyinfo android-tools -y --allowerasing

#Ani-Cli Dependencies
sudo dnf install  grep sed curl mpv iina aria2c yt-dlp ffmpeg fzf patch --skip-unavailable
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

#Multimedia Stuff to make videos play
sudo dnf group install multimedia 
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install ffmpeg-libs -y --allowerasing

#Steam
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager --enable fedora-cisco-openh264 -y
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install steam -y

#Flathub Apps to Use
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
#sudo flatpak install flathub chat.schildi.desktop -y
sudo flatpak install flathub com.ozmartians.VidCutter -y
sudo dnf install steam
#sudo flatpak install flathub-beta com.valvesoftware.Steam -y
sudo flatpak install flathub-beta com.valvesoftware.SteamLink -y
