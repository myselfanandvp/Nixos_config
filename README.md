# ❄️ nixos-config

My personal, flake-based NixOS system configuration — declarative, modular, and reproducible.

## Overview

This repo defines my entire NixOS setup (`nixos` host) using [Nix Flakes](https://nixos.wiki/wiki/Flakes) and [Home Manager](https://github.com/nix-community/home-manager). Instead of clicking through settings, everything — boot, desktop, networking, packages, users, and dotfiles — is written as code and rebuilt with a single command.

**Highlights:**
- 🪟 [niri](https://github.com/YaLTeR/niri) scrollable-tiling Wayland compositor
- 🌊 [noctalia-shell](https://github.com/noctalia-dev/noctalia-shell) desktop shell
- 🔒 [SilentSDDM](https://github.com/uiriansan/SilentSDDM) themed login manager
- 🔊 PipeWire audio (PulseAudio replaced)
- 🐳 Rootless Docker
- 🐟 Fish shell
- 🏠 Home Manager–managed user environment (VS Code + extensions)

## Repo Structure

```
nixos/etc/nixos/
├── flake.nix                  # Flake inputs (nixpkgs, home-manager, noctalia, SilentSDDM) & outputs
├── flake.lock                 # Pinned input versions
├── hosts/
│   ├── configuration.nix      # Main entrypoint — imports every module
│   ├── hardware-configuration.nix
│   └── noctalia.nix           # noctalia-shell service setup
├── modules/
│   ├── audio.nix              # PipeWire
│   ├── boot.nix                # systemd-boot, Plymouth splash
│   ├── desktop.nix             # niri + SDDM + X server/keyboard
│   ├── fonts.nix               # Noto, Fira Code, Nerd Fonts
│   ├── locale.nix              # Timezone & locale
│   ├── networking.nix          # NetworkManager
│   ├── nix.nix                 # Flakes + unfree packages
│   ├── packages.nix            # System-wide packages
│   ├── programs.nix            # Firefox, Fish, SilentSDDM
│   ├── security.nix            # sudo, polkit, firewall
│   ├── services.nix            # Bluetooth, printing, tuned
│   ├── users.nix               # User accounts
│   └── virtualization.nix      # Rootless Docker
└── home/
    └── anand.nix               # Home Manager config for user `anand`
```

## Included Packages

Editors & IDEs, browsers, media, and dev tooling — all pinned via `nixpkgs`:

| Category | Packages |
|---|---|
| Editors | `vscode`, `neovim` |
| Browsers | `brave`, `google-chrome`, `firefox` |
| Media | `spotify`, `mpv`, `vlc`, `obs-studio` |
| Dev tools | `git`, `gh`, `docker`, `distrobox`, `rustc`, `go`, `python3`, `nodejs` |
| Communication | `discord` |
| Misc | `kitty`, `qbittorrent`, `stow`, `tree`, `mediawriter` |

## Requirements

- A machine already running NixOS with flakes enabled
- Git

## Usage

> ⚠️ This configuration is tailored to my hardware and username (`anand`). Review and adjust `hosts/hardware-configuration.nix`, `modules/users.nix`, and `home/anand.nix` before applying it to your own machine.

1. Clone the repo:
   ```bash
   git clone https://github.com/myselfanandvp/nixos-config.git
   ```
2. Copy the config into place (this repo mirrors `/etc/nixos`):
   ```bash
   sudo cp -r nixos-config/nixos/etc/nixos/* /etc/nixos/
   ```
3. Rebuild the system:
   ```bash
   sudo nixos-rebuild switch --flake /etc/nixos#nixos
   ```

## Users

| Username | Groups |
|---|---|
| `anand` | `networkmanager`, `wheel`, `docker` |
| `akhil` | `networkmanager` |

## License

No license specified — feel free to browse for inspiration, but treat it as personal/reference configuration rather than a reusable template.
