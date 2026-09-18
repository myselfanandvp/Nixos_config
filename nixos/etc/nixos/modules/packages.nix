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
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    vimPlugins.nvim-treesitter.withAllGrammars 
    ];

}
