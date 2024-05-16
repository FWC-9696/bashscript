#Basic Gnome Apps
sudo dnf install gnome-system-monitor gnome-weather gnome-screenshot gnome-software blueman system-config-printer qt5ct -y --allowerasing
#Multimedia Stuff to make videos play
sudo dnf group install multimedia 
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install ffmpeg-libs -y --allowerasing
#Flathub Apps to Use
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
#sudo flatpak install flathub chat.schildi.desktop -y
sudo flatpak install flathub com.ozmartians.VidCutter -y
sudo dnf install steam
#sudo flatpak install flathub-beta com.valvesoftware.Steam -y
sudo flatpak install flathub-beta com.valvesoftware.SteamLink -y
