dotfiles
========

config files up for grabs and whatnot

# Fonts
```
sudo pacman -S ttf-inconsolata ttf-linux-libertine ttf-dejavu ttf-ubuntu-font-family ttf-freefont wqy-zenhei
packer -S freetype2-infinality fontconfig-infinality
packer -S source-code-pro-fonts otf-source-code-pro ttf-vista-fonts ttf-mac-fonts ttf-envy-code-r ttf-opensans
sudo infctl setstyle osx2
```

# Vim

## macOS

```shell
$ brew install neovim zsh zsh-completions
$ mkdir -p ~/.config/nvim
$ cp ./.config/nvim/init.vim ~/.config/nvim
```

* Install iTerm2 >= 3.0.15: https://www.iterm2.com/downloads.html
* Install Oh-My-Zsh!: https://github.com/robbyrussell/oh-my-zsh
* Install Oceanic Material theme: https://github.com/rahulpatel/oceanic-material-iterm
* Install favorite font(s) from: https://nerdfonts.com/

```shell
$ echo "alias vim=nvim" >> ~/.zshrc
$ source ~/.zhsrc
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
$ vim +PluginInstall +UpdateRemotePlugins +qall
```
