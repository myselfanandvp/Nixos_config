{ config, pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    # ── CLI / Shell ─────────────────────────────────────────────
    stow
    fastfetch
    fuzzel
    starship
    eza
    tree
    less
    trash-cli
    fish
    fzf
    fd
    ripgrep
    btop
    devenv


    # ── Editors / Development ─────────────────────────────────
    git
    gh
    neovim
    gcc
    gnumake
    rustc
    lua

    # ── Terminal ───────────────────────────────────────────────
    ghostty
    kitty
    wezterm

    # ── Applications ──────────────────────────────────────────
    mpv
    vlc
    obs-studio
    mediawriter
    nautilus
    brave

    # ── Containers ─────────────────────────────────────────────
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    xwayland-satellite
    bibata-cursors
    volantes-cursors
  ];
}
