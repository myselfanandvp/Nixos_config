{
  inputs,
  pkgs,
  ...
}:
let
  noctalia = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  environment.systemPackages = with pkgs; [
    # ── CLI / Shell ─────────────────────────────────────────────
    home-manager
    noctalia
    hyprpicker
    hyprshot
    fastfetch
    wlr-randr
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
    devenv
    wl-clipboard
    grim
    slurp
    satty
    wf-recorder
    uv
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
    mpv
    vlc
    obs-studio
    mediawriter
    nautilus
    brave

    # ── Containers ─────────────────────────────────────────────
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    bibata-cursors
    volantes-cursors

    #  ─────────── Languages ────────────
    nodejs_24
    go
    rustc
    cargo
    unzip
    python314
    typescript
  ];
}
