# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=100000
SAVEHIST=100000

# some useful options (man zshoptions)
# setopt autocd extendedglob nomatch menucomplete
# setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP
# no need of cd ,  '..' will work
setopt autocd
# leading space - no add to history
setopt histignorespace

# The following lines were added by compinstall
zstyle :compinstall filename '/home/pavel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
_comp_options+=(globdots)
# chat GPT
# source $ZDOTDIR/prompt.zsh
source $ZDOTDIR/vim-mode.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/functions.zsh

#Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "romkatv/powerlevel10k"

#fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /etc/zsh_command_not_found

#Completions
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh
