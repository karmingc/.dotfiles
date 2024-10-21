eval "$(starship init zsh)"

# Basic auto/tab complete list:
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load local config
for file in ~/.zsh/lib/*.zsh ~/.zsh.private/lib/*.zsh(N); do
    source $file
done
