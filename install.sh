#!/bin/bash

set -eufo pipefail
set +x
sudo apt-get install -y curl ripgrep xz-utils build-essential &&
sh -c "$(curl -fsSL https://nixos.org/nix/install)" &&
source $HOME/.nix-profile/etc/profile.d/nix.sh &&
nix-env -iA nixpkgs.neovim &&
nix-env -iA nixpkgs.chezmoi &&

chezmoi init --apply kompote
