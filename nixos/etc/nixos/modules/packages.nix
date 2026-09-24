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
    neovim
    git
    gh
    gcc
    rustc
    go
    python3
    nodejs
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

    # Neovim
    vimPlugins.nvim-treesitter.withAllGrammars
  ];

  environment.variables = {
    XCURSOR_SIZE = "32";
    XCURSOR_THEME = "Adwaita";
  };
}
