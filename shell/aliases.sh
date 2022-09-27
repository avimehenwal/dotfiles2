# use zsh pushd, popd and dirs -v                https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/directories.zsh  
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'

alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'

alias rg="rg --pretty"                           # https://github.com/BurntSushi/ripgrep/issues/86
alias ls="ls --color=auto"                       # use colored output
