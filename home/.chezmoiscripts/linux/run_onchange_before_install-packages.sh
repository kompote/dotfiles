#!/bin/bash

set -eufo pipefail
set +x
curl -L https://nixos.org/nix/install | sudo sh &&
source $HOME/.nix-profile/etc/profile.d/nix.sh &&
nix-env -iA nixpkgs.neovim
