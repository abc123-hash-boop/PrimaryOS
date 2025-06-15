
print_ok "Cleaning up /root/.config/ and root's gnome-shell extensions"
/usr/bin/pipx uninstall gnome-extensions-cli
rm /root/.config/mimeapps.list
rm /root/.config/dconf -rf
rm /root/.local/share/gnome-shell/extensions -rf
/usr/bin/pipx uninstall-all
PIPX_HOME=$(pipx environment --value PIPX_HOME)
rm "$PIPX_HOME" -rf
rm /root/.cache -rf
judge "Clean up /root/.config/ and root's gnome-shell extensions"
