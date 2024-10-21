eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fzf
source <(fzf --zsh)

# Z
. /opt/homebrew/etc/profile.d/z.sh

if [[ -d ~/.zsh/functions ]]; then
    fpath=(~/.zsh/functions $fpath)
fi

if [[ -d ~/.zsh/functions ]]; then
    autoload ~/.zsh/functions/*(N)
fi

for file in ~/.zsh/lib/*.zsh ~/.zsh.private/lib/*.zsh(N); do
    source $file
done
