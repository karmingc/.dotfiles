# global aliases
_C() {
    # USAGE: _C COLUMN
    # Get column COLUMN from space seperated output
    typeset column=$1
    awk "{ print \$$column }"
}

alias -g G="| grep"
alias -g L="| less"
alias -g NV="nvim"

# Brew
alias nvBrewfile="NV ~/.config/Brewfile"

# Dotfiles
alias -g dtf='~/.dotfiles'
alias -g aliasesf='~/.dotfiles/zsh/.zsh/lib/aliases.zsh'

# terminal stuff
alias sclear="clear && printf '\e[3J'"


# Tree
alias ta="tree -a"

# Personal laptop
alias cdhrepos="cd ~/documents/engineering/repos"

# kubectl
alias k="kubectl"
alias kpo="k get po"

# git
alias g='git'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout $(git branch | fzf)'
alias ga='git add'
alias gs='git status --short'
alias gsb='git switch $(git branch | fzf)'
alias gl='git log --decorate'
alias gl1p='git log --decorate -1 -p'
alias gls='git log --decorate --stat'
alias gci='git commit -v'
alias gpl='git pull'
alias cdg='cd "$(git rev-parse --show-toplevel)"'
alias gciah='git commit --amend -C HEAD'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gd='git diff'
alias gdc='git diff --cached'
alias gda='git branch | grep -v "main" | xargs git branch -D'

# helm
alias h="helm"

# pulumi
#########
alias pu=pulumi
alias pl='pulumi stack ls'
alias pss='pulumi stack select'
alias pp='pulumi preview'
alias ppd='pulumi preview --diff'

# Work
alias cdwr='cd ~/Documents/work'
