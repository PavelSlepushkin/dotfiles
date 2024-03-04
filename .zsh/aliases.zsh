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

# export LS_OPTIONS='--color=auto --classify --escape --human-readable --no-group'
export LS_OPTIONS='--color=auto -b -h -p'
alias ls="ls $LS_OPTIONS"
alias ll='ls -ltr'
alias la='ls -altr'
# for macos tr
alias tr="LC_ALL=C /usr/bin/tr"
# vault
alias vl='set -x; vault login -method=ldap username=pavel-slepushkin; set +x'
alias vld='set -x; export VAULT_ADDR=https://vault-prod.vault.svc.k8s.kod.kyriba.com ; vault login -method=ldap username=pavel-slepushkin; set +x'
## trying some modern replacements
alias cat=bat
alias catp='bat --plain'
alias caty='bat -l yaml'
export BAT_THEME=Nord
alias diff=delta
compdef delta=diff
