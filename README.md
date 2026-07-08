# DMS (Dotfiles Manager Script) 🛠️

**DMS** is a lightweight, zero-dependency bash package manager for your personal scripts. 
It allows you to easily symlink your custom scripts from your dotfiles repository directly into your system's executable path (`/usr/local/bin`), keeping your custom tools synchronized across multiple machines.

## ✨ Features

- **Zero Dependencies:** Written purely in Bash. No need for Python, Node, or external package managers like GNU Stow.
- **Selective Installation:** Install all your scripts at once or pick only the ones you need on a specific machine.
- **Clean Uninstallation:** Safely removes symlinks without touching your source files.
- **Self-Updating:** Built-in update mechanism to fetch the latest version of DMS from GitHub.

---

## 🚀 Installation

You can install or update DMS using the following one-liner:

```bash
curl -fsSL https://raw.githubusercontent.com/Armanoide/dms/main/install.sh | bash
