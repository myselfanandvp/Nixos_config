{ config, pkgs, inputs, ... }:

let
  system = pkgs.stdenv.hostPlatform.system;
  zen-browser = inputs.zen-browser.packages.${system}.default;
  helium = inputs.helium.packages.${system}.default;
in
{
  environment.systemPackages = with pkgs; [
    # ── CLI / Shell ─────────────────────────────────────────────
    stow
    fastfetch
    starship
    eza
    tree
    less
    trash-cli
    fish
    fzf
    fd
    ripgrep
    btop

    # ── Editors / Development ─────────────────────────────────
    git
    gh
    neovim
    gcc
    gnumake
    rustc
    lua

    # ── Terminal ───────────────────────────────────────────────
    ghostty
    kitty
    wezterm

    # ── Applications ──────────────────────────────────────────
    zen-browser
    helium
    mpv
    vlc
    obs-studio
    mediawriter
    nautilus

    # ── Containers ─────────────────────────────────────────────
    docker
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    xwayland-satellite
    bibata-cursors
    volantes-cursors
  ];
}
