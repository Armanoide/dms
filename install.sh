#!/bin/bash
# dsm - Dotfiles Script Manager Installer

set -e

# Define the raw URL of the dsm script in your repository
# (Update the branch name 'main' if you use 'master')
DSM_RAW_URL="https://raw.githubusercontent.com/Armanoide/dms/refs/heads/main/dsm"
TARGET_BIN="/usr/local/bin/dsm"

echo "=> Downloading dsm..."
# We download to a temporary file first to ensure the download is complete
TMP_FILE=$(mktemp)
if curl -fsSL "$DSM_RAW_URL" -o "$TMP_FILE"; then
    echo "=> Installing dsm to $TARGET_BIN (requires sudo)..."
    sudo mv "$TMP_FILE" "$TARGET_BIN"
    sudo chmod +x "$TARGET_BIN"
    echo "=> Success! You can now use the 'dsm' command."
else
    echo "=> Error: Failed to download dsm from $DSM_RAW_URL"
    rm -f "$TMP_FILE"
    exit 1
fi
