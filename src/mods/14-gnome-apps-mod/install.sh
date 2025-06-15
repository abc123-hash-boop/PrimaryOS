

print_ok "Installing gnome-shell and other gnome applications"

apt install -y ubuntu-desktop
snap remove firefox


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

print_ok "Installing $LANGUAGE_PACKS language packs"
apt install $INTERACTIVE $LANGUAGE_PACKS --no-install-recommends
judge "Install language packs"
