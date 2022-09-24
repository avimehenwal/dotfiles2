# Sample zshrc

```
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/avi/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# FZF
if [ -x "$(command -v fzf)"  ]
then
    source /usr/share/fzf/key-bindings.zsh
fi

# AQS
export SOPS_AGE_KEY=AGE-SECRET-KEY-some-secret-here

# theme
eval "$(starship init zsh)"

# aliases
source /home/avi/WORK/avimehenwal/dotfiles2/shell/aliases.sh
```
