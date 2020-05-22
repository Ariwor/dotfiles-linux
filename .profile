export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here

# Adds `~/.local/bin/` and all subdirectories to $PATH
BIN_PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# mons -e left

export BROWSER="firefox"
export TERMINAL="kitty"
export FILES="ranger"
export CODEEDITOR="atom"

xset r rate 200 50
