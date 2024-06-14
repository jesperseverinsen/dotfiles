# ~/.zshrc

#source ~/Development/personal-gits/dotfiles/zsh/powerlevel9k/config
export PATH="$HOME/.rbenv/bin:$(yarn global bin):$HOME/Library/Python/3.11/bin:$PATH"

export ZSH=~/.oh-my-zsh
export EDITOR='nvim'

#source ~/tmuxinator/completion/tmuxinator.zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Standard plugins: ~/.oh-my-zsh/plugins/*
# Custom plugins: ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  git-flow
  rails
  ruby
  archlinux
  bundler
  sublime
  common-aliases
  lol
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  dotenv
)

function gacp() {
  git add .
  git commit -am "$1"
  git push
}

function gacpu() {
  git add .
  git commit -am "$1"
  git push -u origin $(current_branch)
}

function goto() {
  p=$(realpath $1)
  d=$(dirname $p)
  cd $d
}

function gresign() {
  git rebase --exec 'git commit --amend --no-edit -n -S' -i $1
}

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zrc="nvim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias ....="cd ../.."
alias ......="cd ../../.."
alias home="cd ~"
alias v="nvim"
alias vv="nvim ."
alias l="ll -a"
alias remk="remarkable"
alias lg="lazygit"
alias cldev="cl ~/development"

set -o ignoreeof
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

bindkey "^P" up-line-or-beginning-search
bindkey '[C' forward-word
bindkey '[D' backward-word

# Set up rbenv
eval "$(rbenv init - zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

echo
fastfetch
echo

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
