# Bash aliases
#
# This file is for "generic" shortcuts aliases etc.
#
# The plan is to add other files that are centered an a topic and simply
# source them from here.
#

# Main settings
export EDITOR="code"
# If readlink is not available or if journal is not in home, override with export statements in .bashrc
dot_dir=${dot_dir:-$(dirname "$BASH_SOURCE")}
echo "dot_dir is $dot_dir"

journal=${journal:-"~/journal.md"}

# test from https://github.com/holman/dotfiles/blob/master/script/bootstrap
info () { 
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

echo 'Loading configs from dotfiles'

# LOAD OTHER .DOTFILES
info "looking for other config files in $dot_dir"
if [ -f "$dot_dir/.git_aliases" ]
  then
    info 'loading git aliases'
    source "$dot_dir/.git_aliases"
fi

# NAVIGATION
alias jdm="$EDITOR '$journal'"
alias openv="$EDITOR '$dot_dir/.bash_aliases'"
alias lsa="ls -la"
alias ls="ls -xa"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../.."
alias cl="clear"

# MISC
    # todo taken from https://github.com/holman/dotfiles/blob/master/bin/todo
todo() {
    sed -i "2s/^/- [ ] $*\n/" "$journal"
}

echo "Configs loaded"