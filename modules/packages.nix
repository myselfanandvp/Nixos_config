{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # ── CLI / Shell ─────────────────────────────────────────────
    stow
    fastfetch
    fuzzel
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
    firewalld-gui
    hyprpicker
    hyprshot
    hyprcursor
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
    firefox

    # ── Containers ─────────────────────────────────────────────
    distrobox

    # ── Wayland / Desktop ──────────────────────────────────────
    xwayland-satellite
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
