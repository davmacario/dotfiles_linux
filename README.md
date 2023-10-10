# Dotfiles - Linux

Dotfiles I use on my Linux machines (Ubuntu).
The different branches refer to different setups.

Contents:

* [.zshrc](./.zshrc): ZSH configuration file (using Oh My Zsh)
* [.bashrc](./.bashrc): bash configuration file
* [.vimrc](./.vimrc): VIM configuration file (requires Vundle)

## Requirements - ZSH

* [Oh My Zsh](https://ohmyz.sh/)
  * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#in-your-zshrc)
* [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* Neofetch

## Requirements - bash

* Neofetch

## Requirements - vim

* Vim (ensure your installation supports Python3 - run `vim --version` and look for `+python3` in the output)
* [Vundle](https://github.com/VundleVim/Vundle.vim)
* Black (Python formatter) - create venv in `~/.vim/black/` and follow [this](https://black.readthedocs.io/en/stable/integrations/editors.html#vundle) guide
  * There are some issues with the git repository located at `~/.vim/bundle/black` after installation with Vundle - delete it and clone the [original one](https://github.com/psf/black)
* [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe#linux-64-bit) - follow full installation carefully, solved issues have helped (in particular [n 4063](https://github.com/ycm-core/YouCompleteMe/issues/4063))

