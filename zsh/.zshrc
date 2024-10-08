# Set prompt
PS1="%F{5}%2~%f %# "

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,functions,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Set emacs keymap
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#index-bindkey
bindkey -e
bindkey "^[[3~" delete-char

# Homebrew (does this need to be here?)
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
eval "$(pyenv init --path)"

# ZSH plugins
for plugin_name in {zsh-syntax-highlighting,}; do
    plugin_path=~/.config/zsh/plugins/$plugin_name/$plugin_name.plugin.zsh
    [ -r "$plugin_path" ] && [ -f "$plugin_path" ] && source $plugin_path
done
unset plugin_name plugin_path
# -------- End of intended content --------
