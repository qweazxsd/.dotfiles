# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistfile
HISTSIZE=10000
SAVEHIST=5000
setopt autocd nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alon/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall

# theme/plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/alon/Repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
