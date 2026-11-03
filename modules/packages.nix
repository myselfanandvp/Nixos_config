{
  inputs,
  pkgs,
  ...
}:
let
  zen-browser = inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  environment.systemPackages = with pkgs; [
    # ── CLI / Shell ─────────────────────────────────────────────
    home-manager
    loupe
    hyprpicker
    hyprshot
    fastfetch
    wlr-randr
    starship
    eza
    tree
    trash-cli
    fish
    fzf
    ripgrep
    btop
    wl-clipboard
    grim
    slurp
    satty
    wf-recorder
    unzip

    # ── Editors / Development ─────────────────────────────────
    git
    gh
    gcc
    gnumake
    # ── Terminal ───────────────────────────────────────────────
    ghostty
    kitty
    wezterm

    # ── Applications ──────────────────────────────────────────
    mpv
    vlc
    obs-studio
    mediawriter
    nautilus
    brave
    zen-browser

    # ── Containers ─────────────────────────────────────────────
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    bibata-cursors
    volantes-cursors
  ];
}
