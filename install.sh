# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.bat \
	nixpkgs.neovim \
	nixpkgs.yarn \
	nixpkgs.stow \
	nixpkgs.git

# source nix
if [ -e /home/wojtek/.nix-profile/etc/profile.d/nix.sh ]; then . /home/wojtek/.nix-profile/etc/profile.d/nix.sh; fi

# stow
cd ~/.dotfiles
stow git
stow zsh
stow nvim

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# setup antibody bundle
antibody bundle  < ~/.zsh_plugins.txt> ~/.zsh_plugins.sh

# install plug
sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# run PlugInstall
nvim --headless +PlugInstall +qall
