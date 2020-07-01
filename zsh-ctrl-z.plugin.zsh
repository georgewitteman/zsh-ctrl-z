#!/usr/bin/env zsh

_zsh_ctrl_z(){
  if [[ $#BUFFER -ne 0 ]]; then
    # Push the current buffer onto the buffer stack and clear the buffer.
    zle push-input
  fi
  BUFFER="fg"
  zle accept-line
}

zle -N _zsh_ctrl_z
bindkey '^Z' _zsh_ctrl_z
