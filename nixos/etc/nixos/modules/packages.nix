{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
    fastfetch
    lua
    ghostty
    tmux
    brave
    mpv
    obs-studio
    mediawriter
    starship
    discord
    rustc
    nautilus
    go
    vlc
    fd
    python3
    nodejs
    docker
    neovim
    distrobox
    git
    gh
    tree
    xwayland-satellite
    gcc
    fuzzel
    vimPlugins.nvim-treesitter.withAllGrammars 
    nixd          # Nix LSP
    pyright       # Python LSP
    lua-language-server
    # Formatters & Linters
    alejandra     # Nix formatter
    stylua        # Lua formatter
    eza
    less
    trash-cli
    kitty
    ];

environment.variables.XCURSOR_SIZE = "32";
environment.variables.XCURSOR_THEME = "Adwaita";
}
