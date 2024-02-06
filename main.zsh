# Main aliases
#  reworked feb2024 to use zsh has the shell in conjunction with Warp.
#  Warp removes the need to using quite a few plugins and extensions such as presto.
#
# Put generic configurations and shortcuts here and create standalone config files
#   in the .dotfiles/ folder
#
#
# Add VS COde to path
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Main settings
export EDITOR="code"

# test from https://github.com/holman/dotfiles/blob/master/script/bootstrap
info () { 
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

configs_dir=$(dirname "$0")

info "Loading personal configs from $configs_dir"

dot_dir="$configs_dir/dotfiles"

. $configs_dir/load_dotfiles.zsh $dot_dir

# NAVIGATION
alias lsa="ls -la"
alias ls="ls -xa"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../.."
alias cl="clear"
alias openconfigs=code "$0"

echo "Configs loaded"