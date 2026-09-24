{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # CLI / Shell
    stow
    fastfetch
    starship
    tmux
    eza
    fd
    tree
    less
    trash-cli

    # Editors / Development
    git
    neovim
    gh
    gcc
    rustc
    go
    lua

    # Language Servers / Tooling
    nixd
    pyright
    ruff
    lua-language-server

    # Formatters
    alejandra
    stylua

    # Terminal
    ghostty
    kitty

    # Applications
    brave
    discord
    mpv
    vlc
    obs-studio
    mediawriter
    # nautilus
    thunar

    # Containers
    docker
    distrobox

    # Wayland
    xwayland-satellite
    fuzzel

  ];

  environment.variables = {
    XCURSOR_SIZE = "32";
    XCURSOR_THEME = "Adwaita";
  };
}
