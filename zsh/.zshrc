eval "$(starship init zsh)"
eval $(thefuck --alias)

autoload -U compinit; compinit
source ~/fzf-tab/fzf-tab.plugin.zsh

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fzf
source <(fzf --zsh)

# Z
. /opt/homebrew/etc/profile.d/z.sh

# Load local configs for zsh
if [[ -d ~/.zsh/functions ]]; then
    fpath=(~/.zsh/functions $fpath)
fi

if [[ -d ~/.zsh/functions ]]; then
    autoload ~/.zsh/functions/*(N)
fi

for file in ~/.zsh/lib/*.zsh ~/.zsh.private/lib/*.zsh(N); do
    source $file
done

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/karming.chin/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
