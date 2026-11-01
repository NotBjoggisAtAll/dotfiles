#!/usr/bin/env bash

if command -v dnf &> /dev/null; then
    echo "Installing Fish via DNF..."
    sudo dnf install -y fish
elif command -v apt-get &> /dev/null; then
    echo "Installing Fish via APT..."
    sudo apt update && sudo apt install -y fish
else
    echo "Neither dnf nor apt-get found. Skipping Fish installation."
    exit 0
fi
