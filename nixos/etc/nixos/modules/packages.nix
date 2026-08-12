{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    stow
    kitty
    brave
    vscode
    spotify
    mpv
    obs-studio
    mediawriter
    discord
    rustc
    go
    google-chrome
    vlc
    python3
    nodejs
    docker
    neovim
    qbittorrent
    distrobox
    git
    gh
    tree
    ];

}
