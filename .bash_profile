export PS1='\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
umask 0022
alias ps1="echo \"export PS1='\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '\""
alias dt="date +%Y%m%d_%H%M%S"
alias grep='grep --color'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
export EDITOR=vim

export PATH="$HOME/go/bin/:$PATH"

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
alias vi="nvim"
alias vim="nvim"
