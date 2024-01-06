alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias h='history'
alias k='kubectl'
alias kubens='kubectl config set-context --current --namespace '
alias vi='nvim'
alias grep='grep --color'
# alias grep1=' tee -i >(head -n1 >&2) && grep '
alias gs='git status'
alias cg='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gm='git switch $(git rev-parse --abbrev-ref origin/HEAD |cut -f2 -d\/)'

# export LS_OPTIONS='--color=auto --classify --escape --human-readable --no-group'
export LS_OPTIONS='--color=auto -b -h -p'
alias ls="ls $LS_OPTIONS"
alias ll="ls -ltr"
alias la="ls -altr"
# vault
alias vl="set -x; export VAULT_ADDR=https://vault.core.aws.kyriba.com ; vault login -method=ldap username=pavel-slepushkin; set +x"
alias vld="set -x; export VAULT_ADDR=https://vault-prod.vault.svc.k8s.kod.kyriba.com ; vault login -method=ldap username=pavel-slepushkin; set +x"
## trying some modern replacements
alias cat=bat
alias diff=delta
