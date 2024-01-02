# bindkey -e will be emacs mode
bindkey -v
export KEYTIMEOUT=1
# binds 'like-bash'
bindkey '^R' history-incremental-search-backward
bindkey -M viins '^[.' insert-last-word
# binds for autocomplete
bindkey -M viins "^[[1;3C" forward-word
bindkey -M viins "^[[1;3D" backward-word
# home/end for macOs
bindkey -M viins "^[[1~" beginning-of-line
bindkey -M viins "^[[4~" end-of-line
bindkey -M vicmd "^[[1~" beginning-of-line
bindkey -M vicmd "^[[4~" end-of-line
# v for edit-coomand-line
autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
# ChatGPT implementation of show mode 

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg_bold[cyan]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
#     zle reset-prompt
# }
#
# function zle-line-init zle-keymap-select {
#     case $KEYMAP in
#         vicmd)      VIM_PROMPT="%{$fg_bold[cyan]%} [% NORMAL]%  %{$reset_color%}" ;;
#         main|viins) VIM_PROMPT="%{$fg_bold[blue]%} [% INSERT]%  %{$reset_color%}" ;;
#         *)          VIM_PROMPT="" ;;
#     esac
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
#     zle reset-prompt
# }
#
# zle -N zle-line-init
# zle -N zle-keymap-select
# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

