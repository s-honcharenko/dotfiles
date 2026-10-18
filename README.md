# dotfiles


## List of tools

+ [[homebrew/brew](https://github.com/homebrew/brew)]
    Package manager for MacOS
+ [[twpayne/chezmoi](https://github.com/twpayne/chezmoi)]
    Dotfiles manager
+ [[neovim/neovim](https://github.com/neovim/neovim)]
    Text editor
+ [[ghostty-org/ghostty](https://github.com/ghostty-org/ghostty)]
    Terminal emulator
+ [[fish-shell/fish-shell](https://github.com/fish-shell/fish-shell)]
    A command line shell. Using with informative_vcs
+ [[tmux/tmux](https://github.com/tmux/tmux)]
    Terminal multiplexer
+ [[skim](https://skim-app.sourceforge.io/)]
    PDF viewer 

## Backup local config
```shell
tar -czf config-backup.tar.gz ~/.config
```

## Apply the dotfiles
```shell
chezmoi init --apply https://github.com/serge-honcharenko/dotfiles
brew bundle --file=~/.config/homebrew/Brewfile
```

## Remove the dotfiles
```shell
chezmoi purge
chezmoi purge --binary
```

<!-- ## Remove brew formuls -->
<!-- ```shell -->
<!-- brew uninstall <tools> && brew autoremove && brew cleanup -->
<!-- ``` -->
<!---->
<!-- ## Remove brew -->
<!-- ```shell -->
<!-- /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" -->
