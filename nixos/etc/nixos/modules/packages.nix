{ config, pkgs, inputs, ... }:
let
  zen-browser = inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default;
  helium = inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default;
in

{
  environment.systemPackages = with pkgs; [
    # CLI / Shell
    stow
    fastfetch
    starship
    eza
    tree
    less
    trash-cli
    bibata-cursors
volantes-cursors


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
    xwayland-satellite


    # Terminal
    ghostty
    kitty

    # Applications
    brave
    mpv
    vlc
    obs-studio
    mediawriter
    zen-browser
    helium
    nautilus
    fish
    # thunar

    # Containers
    docker
    distrobox

    # Wayland
    xwayland-satellite
  ];


environment.sessionVariables = {
    XCURSOR_THEME = "volantes_cursors";
  };

}
