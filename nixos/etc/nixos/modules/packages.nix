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

    #sddm themes
    sddm-astronaut

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
    XCURSOR_SIZE = "20";
    XCURSOR_THEME = "Adwaita";
  };
}
