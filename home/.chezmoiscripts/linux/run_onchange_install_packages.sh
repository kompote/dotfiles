#!/bin/bash

set -eufo pipefail
set +x
mkdir -p $HOME/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda3/miniconda.sh &&
bash $HOME/miniconda3/miniconda.sh -b -u -p $HOME/miniconda3 &&
rm -rf $HOME/miniconda3/miniconda.sh &&
source "$HOME/miniconda3/etc/profile.d/conda.sh" &&
conda config --set auto_activate_base false
