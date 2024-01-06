alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias h='history'
alias k='kubectl'
alias kubens='kubectl config set-context --current --namespace '
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
alias diff=delta
