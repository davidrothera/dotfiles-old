#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# export GEM_HOME=$HOME/.gem
# export PATH=$GEM_HOME/bin:$PATH
source ~/.profile

# Alias
alias coursera-cpp='clang++ -pipe -O2 -std=c++14 -lm'
alias vim='nvim'
alias vimdiff='nvim -d'

# Path stuff
export PATH=~/.dotfiles/bin:~/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
