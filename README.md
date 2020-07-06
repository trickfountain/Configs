# Eric's configs
*different portable configs stored in the cloud*

# Dotfiles

## Install

** WIP **
For now it seems to work best if you export the location of your dotfiles and then source it.  
This is what I used on the mac, change the full path to reflect the machine you are working on.

Add the two following lines  wherever your config file is first loaded (`.bashrc`or `.bash_profile`) :  
```
export dot_dir="/Users/ericfontaine/Configs/dotfiles"
source /Users/ericfontaine/Configs/dotfiles/.bash_aliases
```

### Git
If you install zsh and Prezto, it comes with it's own git aliases.  
If you need inspiration for new git aliases check SH's [repo](https://github.com/sorin-ionescu/prezto/blob/master/modules/git/alias.zsh)

# VS Code configs

## Snippets
VS Code allows one JSON per language and/or one global snippet file.  
For now we're using the global file and are setting scope to specific language for the main reason that I only use a handful of snippets so it seems silly to have many files.

### Importing
Snippet file should be moved to `.../Code/User/snippets/`.
> For BNC Windows install the full path was : `C:\Users\FONE003\AppData\Roaming\Code\User\snippets\global.code-snippets`

For a refresher on snippets see [the user guide](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

 ## KeyBindings
 


# Thanks
This repo was inspired by this article: [Dotfiles are meant to be forked](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/). (and no this is not a fork)

