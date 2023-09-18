#!/bin/bash

set -eufo pipefail
set +x
sudo apt-get install -y ripgrep xz-utils &&

if [ "$(command -v curl)" ]; then
    sh -c "$(curl -fsSL https://nixos.org/nix/install)"
elif [ "$(command -v wget)" ]; then
    sh -c "$(wget -qO- https://nixos.org/nix/install)"
else
    echo "To install nixos, you must have curl or wget installed." >&2
    exit 1
fi
#curl -L https://nixos.org/nix/install | sudo sh &&
source $HOME/.nix-profile/etc/profile.d/nix.sh &&
nix-env -iA nixpkgs.neovim
