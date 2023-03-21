# Set prompt
PS1='%F{5}%2~%f %# '

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

# Homebrew (does this need to be here?)
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
eval "$(pyenv init --path)"

# Antidote - ZSH plugin manager
# Clone if necessary.
[[ -e ${ZDOTDIR:-~}/.antidote ]] ||
    git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Source antidote.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# Initialize antidote's dynamic mode, which changes `antidote bundle`
# from static mode.
source <(antidote init)

# Bundle plugins
antidote bundle Aloxaf/fzf-tab
antidote bundle zsh-users/zsh-syntax-highlighting

# -------- End of intended content --------
