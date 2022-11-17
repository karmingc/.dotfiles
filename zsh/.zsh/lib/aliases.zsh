# global aliases
_C() {
    # USAGE: _C COLUMN
    # Get column COLUMN from space seperated output
    typeset column=$1
    awk "{ print \$$column }"
}

alias -g G="| grep"
alias -g L="| less"

# terminal stuff
alias sclear="clear && printf '\e[3J'"

# kubectl
alias k="kubectl"
alias kpo="k get po"

# helm
alias h="helm"