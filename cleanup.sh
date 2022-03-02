#remove stowed config
stow -D git
stow -D zsh
stow -D nvim

#change shell back to bash
sudo chsh -s $(which bash) $USER

#remove nix
rm -rf $HOME/{.nix-channels,.nix-defexpr,.nix-profile,.config/nixpkgs}
sudo rm -rf /nix

#remove .dotfiles
rm -rf $HOME/.dotfiles
