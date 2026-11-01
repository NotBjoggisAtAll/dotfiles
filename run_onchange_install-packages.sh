#!/usr/bin/env bash

if command -v dnf &> /dev/null; then
    echo "Installing Fish, Direnv via DNF..."
    dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/shells:fish:nightly:master/Fedora_44/shells:fish:nightly:master.repo
    sudo dnf install -y fish direnv
elif command -v apt-get &> /dev/null; then
    echo "Installing Fish, Direnv via APT..."
    sudo add-apt-repository ppa:fish-shell/nightly-master
    sudo apt update && sudo apt install -y fish direnv
else
    echo "Neither dnf nor apt-get found. Skipping Fish installation."
    exit 0
fi

