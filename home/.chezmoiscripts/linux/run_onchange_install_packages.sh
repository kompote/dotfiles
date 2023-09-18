#!/bin/bash

set -eufo pipefail
set +x
sudo apt-get install -y curl ripgrep xz-utils build-essential &&
sh -c "$(curl -fsSL https://nixos.org/nix/install)" &&
source $HOME/.nix-profile/etc/profile.d/nix.sh &&
nix-env -iA nixpkgs.neovim &&
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh &&
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 &&
rm -rf ~/miniconda3/miniconda.sh &&
source "$HOME/miniconda3/etc/profile.d/conda.sh" &&
conda config --set auto_activate_base false

