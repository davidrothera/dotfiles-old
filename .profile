if [ "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon -s)
fi

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
