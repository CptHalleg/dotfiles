#!/bin/bash
cd ~/dotfiles/
stow --verbose=2 --dotfiles --dir=~/dotfiles --target=~ --delete *
