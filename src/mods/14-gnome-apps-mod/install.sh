

print_ok "Installing gnome-shell and other gnome applications"

apt install -y alsa-base  alsa-utils  anacron  at-spi2-core  bc  ca-certificates  dmz-cursor-theme  fontconfig  fonts-dejavu-core  foomatic-db-compressed-ppds  gdm3  ghostscript  gnome-control-center  gnome-menus  gnome-session-canberra  gnome-settings-daemon  gnome-shell  gnome-shell-extension-appindicator  gnome-shell-extension-desktop-icons-ng  gnome-shell-extension-ubuntu-dock  gnome-shell-extension-ubuntu-tiling-assistant  gstreamer1.0-alsa  gstreamer1.0-packagekit  gstreamer1.0-plugins-base-apps  inputattach  language-selector-common  language-selector-gnome  libatk-adaptor  libnotify-bin  libsasl2-modules  libu2f-udev  nautilus  openprinting-ppds  pipewire-pulse  printer-driver-pnm2ppa  rfkill  software-properties-gtk  spice-vdagent  ubuntu-desktop-minimal  ubuntu-drivers-common  ubuntu-release-upgrader-gtk  ubuntu-session  ubuntu-settings  unzip  update-manager  update-notifier  wireless-tools  wireplumber  wpasupplicant  xdg-user-dirs  xdg-user-dirs-gtk  xkb-data  xorg  yelp  zenity  zip apport-gtk  appstream  apt-config-icons-hidpi  avahi-daemon  baobab  bluez  bluez-cups  brltty  cloud-init  cups  cups-bsd  cups-client  cups-filters  deja-dup  dirmngr  eog  evince  file-roller  fonts-liberation  fonts-noto-cjk  fonts-noto-color-emoji  fonts-noto-core  fonts-ubuntu  fwupd  fwupd-signed  gamemode  gir1.2-gmenu-3.0  gnome-accessibility-themes  gnome-bluetooth-sendto  gnome-disk-utility  gnome-font-viewer  gnome-initial-setup  gnome-keyring  gnome-logs  gnome-power-manager  gnome-remote-desktop  gnome-snapshot  gnome-system-monitor  gnome-terminal  gnome-text-editor  gpg-agent  gsettings-ubuntu-schemas  gvfs-fuse  hplip  ibus  ibus-gtk  ibus-gtk3  ibus-table  im-config  kerneloops  laptop-detect  libglib2.0-bin  libnss-mdns  libpam-fprintd  libpam-gnome-keyring  libpam-sss  libproxy1-plugin-gsettings  libproxy1-plugin-networkmanager  libspa-0.2-bluetooth  libwmf0.2-7-gtk  memtest86+  mousetweaks  nautilus-sendto  network-manager  network-manager-config-connectivity-ubuntu  network-manager-openvpn-gnome  network-manager-pptp-gnome  orca  packagekit  pcmciautils  plymouth-theme-spinner  policykit-desktop-privileges  printer-driver-brlaser  printer-driver-c2esp  printer-driver-foo2zjs  printer-driver-m2300w  printer-driver-min12xxw  printer-driver-ptouch  printer-driver-pxljr  printer-driver-sag-gdi  printer-driver-splix  remmina  rhythmbox  seahorse  shotwell  simple-scan  snapd  speech-dispatcher  systemd-oomd  totem  transmission-gtk  ubuntu-wallpapers  usb-creator-gtk  whoopsie  xcursor-themes  xdg-desktop-portal-gnome  xdg-utils  yaru-theme-gnome-shell  yaru-theme-gtk  yaru-theme-icon  yaru-theme-sound


apt install $INTERACTIVE \
    orca \
    speech-dispatcher-espeak-ng \
    speech-dispatcher-audio-plugins \
    speech-dispatcher \
    espeak-ng-data \
    --no-install-recommends

install_opt ubuntu-session-xsession

print_ok "Installing plymouth..."
apt install $INTERACTIVE \
    plymouth \
    plymouth-label \
    plymouth-theme-spinner \
    plymouth-theme-ubuntu-text --no-install-recommends
judge "Install plymouth"


print_ok "Installing nautilus..."
apt install $INTERACTIVE nautilus --no-install-recommends
judge "Install nautilus"

print_ok "Installing gnome extension utilities..."
apt install $INTERACTIVE \
    gnome-shell-extension-desktop-icons-ng \
    gnome-shell-extension-appindicator --no-install-recommends
judge "Install gnome extension utilities"

print_ok "Installing gnome additional applications $DEFAULT_APPS..."
apt install $INTERACTIVE \
    gnome-control-center \
    $DEFAULT_APPS \
    --no-install-recommends
judge "Install gnome additional applications"

print_ok "Installing default cli applications..."
apt install $INTERACTIVE \
    wget \
    $DEFAULT_CLI_TOOLS \
    --no-install-recommends
judge "Install default cli applications"

print_ok "Installing gnome multimedia support..."
apt install $INTERACTIVE \
    gstreamer1.0-alsa \
    gstreamer1.0-libav \
    gstreamer1.0-gtk3 \
    gstreamer1.0-x \
    gstreamer1.0-gl \
    gstreamer1.0-tools \
    gstreamer1.0-pipewire \
    gstreamer1.0-packagekit \
    gstreamer1.0-plugins-base-apps --no-install-recommends
judge "Install gstreamer"

print_ok "Installing gnome console..."
apt install $INTERACTIVE \
    gnome-console  --no-install-recommends
judge "Install gnome console"

print_ok "Installing ibus..."
apt install $INTERACTIVE \
    ibus \
    ibus-gtk ibus-gtk3 ibus-gtk4 im-config --no-install-recommends
judge "Install ibus"

print_ok "Installing gnome fonts..."
apt install $INTERACTIVE \
    fonts-noto-cjk fonts-noto-core fonts-noto-mono fonts-noto-color-emoji --no-install-recommends
judge "Install gnome fonts"

print_ok "Installing gnome printer support..."
apt install $INTERACTIVE \
    cups \
    cups-bsd \
    cups-browsed \
    cups-pk-helper \
    ipp-usb \
    --no-install-recommends
judge "Install gnome printer support"

print_ok "Installing ubuntu drivers support..."
apt install $INTERACTIVE \
    ubuntu-drivers-common alsa-utils alsa-base fprintd --no-install-recommends
judge "Install ubuntu drivers support"

print_ok "Installing python3..."
apt install $INTERACTIVE \
    python3 \
    python3-pip \
    python-is-python3 \
    pipx \
    --no-install-recommends
judge "Install python3"

print_ok "Installing gnome software..."
apt install $INTERACTIVE \
    xorg \
    --no-install-recommends
judge "Install gnome software"

print_ok "Remove the default htop.desktop file"
rm /usr/share/applications/htop.desktop || true
judge "Remove the default htop.desktop file"

print_ok "Remove the default vim.desktop file"
rm /usr/share/applications/vim.desktop || true
judge "Remove the default vim.desktop file"

print_ok "Installing $LANGUAGE_PACKS language packs"
apt install $INTERACTIVE $LANGUAGE_PACKS --no-install-recommends
judge "Install language packs"
