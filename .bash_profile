# Aliases
alias sbp='source ~/.bash_profile'
alias valias='vim ~/.bash_profile'
alias gst='git status'
alias gaa='git add --all'
alias gdc='git diff --cached'
alias gpr='git pull --rebase'
alias gpo='git push origin'
alias gd='git diff'
alias gl='git log'
alias br='git branch'
alias ll='ls -al'
alias vim='nvim'

#Default editor
export EDITOR=vim

#Git setup for PS1
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta}%r (%b)%f'
zstyle ':vcs_info:*' enable git

# PS1
PROMPT='%F{red}%n@%m %F{white}%! %F{green}%3~%F{white} %b'
