{
  inputs,
  pkgs,
  ...
}:
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
    openssl
    cmake
    clang
    ripgrep
    fd
    gcc
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
    gnumake
    wf-recorder
    unzip
    marksman
    statix
    nixd
    nixfmt

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
    vivaldi
    floorp-bin

    # ── Containers ─────────────────────────────────────────────
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    bibata-cursors
    volantes-cursors
  ];
}
