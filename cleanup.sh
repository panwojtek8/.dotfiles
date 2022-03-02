#remove nix
rm -rf $HOME/{.nix-channels,.nix-defexpr,.nix-profile,.config/nixpkgs}
sudo rm -rf /nix

stow -D git
stow -D zsh
stow -D nvim

#remove .dotfiles
rm -rf $HOME/.dotfiles
