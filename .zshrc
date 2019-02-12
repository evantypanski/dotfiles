# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# I made a custom theme based on maran
ZSH_THEME="mymaran"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(python git tmux z)

source $ZSH/oh-my-zsh.sh

PATH="/home/evan/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/evan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/evan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/evan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/evan/perl5"; export PERL_MM_OPT;

eval "$(ssh-agent)" > /dev/null

# Aliases
alias npm-exec='PATH=$(npm bin):$PATH'

# Thefuck - super useful for correcting mistakes
eval $(thefuck --alias)

alias rr='ranger'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
