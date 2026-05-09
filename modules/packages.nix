{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    starship
    alacritty
    fuzzel
    noctalia-shell
    xwayland-satellite
    stow
    zed
    keyd
    kitty
    brave
    vscode
    spotify
    mpv
    bun
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
