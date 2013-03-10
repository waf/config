# Aliases
alias ls='ls --color=auto'
alias texi2pdf='texi2pdf --clean'
unset manpath

export TERM=rxvt-256color
export CFLAGS="$CFLAGS -march=native"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

# default apps
(( ${+PAGER} ))   || export PAGER="less"
(( ${+EDITOR} ))   || export EDITOR="vim"

# Prompt
autoload promptinit && promptinit
autoload -U colors && colors
export PS1="%{$fg_bold[green]%}%B%n%b%{$reset_color%}%B@%m%b:%~> "
# root prompt:
# export PS1="%B%{$fg[red]%}%n%b%{$reset_color%}%B@%m:%b%~> "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify nohup
setopt autopushd pushdignoredups pushdminus pushdsilent pushdtohome

# vi keybindings
bindkey -v
# vi keybindings seem to mess up the delete key, so rebind it.
bindkey -v '^[[3~' delete-char

# Turn off the beep
unsetopt beep
setterm -blength 0

# colorful listings
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# The following lines were added by compinstall
zstyle :compinstall filename '/home/wafuqua/.zshrc'
autoload -Uz compinit
compinit
