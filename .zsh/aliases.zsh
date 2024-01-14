alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias h='history'
alias k='kubectl'
# alias kubens='kubectl config set-context --current --namespace '
# https://kubernetes.io/docs/reference/kubectl/quick-reference/
# short alias to set/show context/namespace (only works for bash and bash-compatible shells, current context to be set before using kn to set namespace)
# alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; } ; f'
# alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl config view --minify | grep namespace | cut -d" " -f6 ; } ; f'
# make kn a function, so we can create completion without setopt completealaiases
function kn() {
    [[ -v 1 ]] && kubectl config set-context --current --namespace "$1" || \
        kubectl config view --minify | grep namespace | cut -d" " -f6 
} 

alias vi='nvim'
alias grep='grep --color'
alias gs='git status'
alias cg='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gm='git switch $(git rev-parse --abbrev-ref origin/HEAD |cut -f2 -d\/)'
export LS_OPTIONS='--color=auto --classify --escape --human-readable --no-group'
alias ls="ls $LS_OPTIONS"
alias ll="ls -ltr"
alias la="ls -la"
## trying some modern replacements
alias cat=batcat
alias catp=batcat --plain
export BAT_THEME=Nord
alias diff=delta
compdef delta=diff
