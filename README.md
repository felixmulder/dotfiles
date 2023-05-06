# Dotfiles
This repo contains history of my dotfiles for a variety of different desktop
environments. Most notably, it now contains a lua version of my neovim setup.

## Neovim
I'm currently configuring this using lua, the [init.lua](/init.lua) file is
the natural entrypoint and is responsible for sourcing the other scripts.

Notably, the [packer.lua](/lua/felixmulder/packer.lua) is used to manage neovim
packages.
