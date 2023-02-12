source /usr/share/bash-completion/completions/git
export PS1='\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]$(__git_ps1 " (%s)")\n\$ '
# umask 0022
alias ps1="echo \"export PS1='\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]$(__git_ps1 " (%s)")\n\$ '\""
alias dt="date +%Y%m%d_%H%M%S"
alias grep='grep --color'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
export EDITOR=nvim

set +o emacs
set -o vi
#bind -m vi-command ".":yank-last-argument
bind C-_:insert-last-argument
# # Path
# pathadd() {
#   if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
#     PATH="$1${PATH:+":$PATH"}"
#   fi
# }
# pathrm() {
#   # Delete path by parts so we can never accidentally remove sub paths
#   if [ "$PATH" == "$1" ] ; then PATH="" ; fi
#   PATH=${PATH//":$1:"/":"} # delete any instances in the middle
#   PATH=${PATH/#"$1:"/} # delete any instance at the beginning
#   PATH=${PATH/%":$1"/} # delete any instance in the at the end
# }

export PATH="$HOME/go/bin/:$PATH"

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
alias vi="nvim"
alias vim="nvim"
