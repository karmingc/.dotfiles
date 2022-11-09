
eval "$(pyenv init -)"

eval "$(starship init zsh)"

# Basic auto/tab complete list:
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases

alias sclear="clear && printf '\e[3J'"
alias k="kubectl"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
