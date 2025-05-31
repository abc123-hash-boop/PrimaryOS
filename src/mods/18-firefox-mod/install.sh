wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i chrome.deb
apt --fix-broken install
rm chrome.deb
