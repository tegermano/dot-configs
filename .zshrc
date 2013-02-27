# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tgermano/.zshrc'

autoload -Uz compinit
compinit

autoload -U colors && colors

autoload -U promptinit
promptinit
prompt off

#delete key
bindkey '\e[3~' delete-char

#home
bindkey '\e[1~' beginning-of-line

#end
bindkey '\e[4~' end-of-line

#insert
bindkey '\e[2~' overwrite-mode

#tab completion
bindkey '^i' expand-or-complete-prefix
# End of lines added by compinstall

# use ctrl-v to find key combinations
bindkey '^[h' backward-kill-word

setopt NO_BEEP

# aliases
alias ll='ls -al'
alias h='history -50'
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -hF --color=tty'                 # classify files in colour
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

source aliases