gconftool-2 -t string -s /desktop/gnome/url-handlers/omnicoin/command "java -splash:doesnotexist.png -jar $INSTALL_PATH/omnilite-exe.jar %s"
gconftool-2 -s /desktop/gnome/url-handlers/omnicoin/needs_terminal false -t bool
gconftool-2 -t bool -s /desktop/gnome/url-handlers/omnicoin/enabled true