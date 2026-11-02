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
    less
    trash-cli
    zen-browser
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
    unzip

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
    nodejs_26
    go
    rustc
    cargo
    python314
    typescript

    #  ──────── Lazyvim packages ────────
    nixd
    pyright
    ruff
    tree-sitter
    lua-language-server
    nixfmt
    alejandra
    stylua
    typescript-language-server
    ghostscript
    bun
    statix
    less
    lessc
    fd
  ];
}
