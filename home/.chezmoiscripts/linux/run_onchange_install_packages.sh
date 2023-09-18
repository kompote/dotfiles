#!/bin/bash

set -eufo pipefail
set +x
if [ "$(command -v curl)" ]; then
    sudo sh -c "$(curl -fsSL https://nixos.org/nix/install)"
elif [ "$(command -v wget)" ]; then
    sudo sh -c "$(wget -qO- https://nixos.org/nix/install)"
else
    echo "To install nixos, you must have curl or wget installed." >&2
    exit 1
fi
#curl -L https://nixos.org/nix/install | sudo sh &&
source $HOME/.nix-profile/etc/profile.d/nix.sh &&
nix-env -iA nixpkgs.neovim
