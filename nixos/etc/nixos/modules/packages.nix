{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
    lua
    kitty
    brave
    mpv
    obs-studio
    mediawriter
    starship
    discord
    rustc
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
    ];

}
