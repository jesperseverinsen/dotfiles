# ~/.zshrc

source ~/Development/personal-gits/dotfiles/powerlevel9k/config
export PATH=~/.local/lib:~/.local/bin:$PATH
export ZSH="~/.oh-my-zsh"
export EDITOR='nvim'
export BROWSER='google-chrome-stable'

#source ~/tmuxinator/completion/tmuxinator.zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="spaceship"

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

function php_s() {
  php -S localhost:8000
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
alias foremans="foreman start"

# Progras Aliases
alias nginxlog="sudo chown jesper:jesper /var/log/nginx/access.log"

# Set up rbenv
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo
neofetch
echo

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
