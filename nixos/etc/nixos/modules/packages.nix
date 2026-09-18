{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
    kitty
    brave
    mpv
    obs-studio
    mediawriter
    discord
    rustc
    go
    vlc
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
    ];

}
