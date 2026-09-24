{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # CLI / Shell
    stow
    fastfetch
    starship
    tmux
    eza
    tree
    less
    trash-cli
    stow


    # Editors / Development
    git
    neovim
    gh
    fzf
    fd
    gcc
    rustc
    gnumake
    ripgrep
    lua
    


    # Terminal
    ghostty
    kitty

    # Applications
    brave
    mpv
    vlc
    obs-studio
    mediawriter
    inputs.zen.packages.${pkgs.stdenv.hostPlatform.system}.default
    nautilus
    fish
    # thunar

    # Containers
    docker
    distrobox

    # Wayland
    xwayland-satellite
    fuzzel

  ];

}
