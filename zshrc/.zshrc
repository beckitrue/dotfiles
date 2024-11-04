# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
 ZSH_CUSTOM=~/.config/zshrc/custom

# setting location for zcompdump
export ZSH_COMPDUMP="$ZSH/cache/zcompdump-$HOSTNAME-$ZSH_VERSION"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# 
# aliases are in the ZSH_CUSTOM folder 

# source aliases
source ~/.config/zshrc/custom/aliases.zsh

# add go to path
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/.local/bin
export GOPATH=~/repos/go_projects
export GOROOT=/usr/local/go
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:$GOPATH/bin
export GOBIN=~/go/bin
export PATH=$PATH:$GOBIN

#FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude ".git" --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='-i --height=50% --preview "bat --color=always --style=header,grid --line-range :500 {}"'

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

