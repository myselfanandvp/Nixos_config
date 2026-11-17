{
  inputs,
  pkgs,
  ...
}:
{

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/main.tar.gz") {
      inherit pkgs;
    };
  };
  environment = {
    systemPackages = with pkgs; [
      # ── CLI / Shell ─────────────────────────────────────────────
      home-manager
      loupe
      hyprpicker
      hyprshot
      fastfetch
      wlr-randr
      starship
      eza
      brave
      openssl
      davinci-resolve
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
      floorp-bin

      # ── Containers ─────────────────────────────────────────────
      distrobox

      # ── Wayland / Desktop ──────────────────────────────────────
      bibata-cursors
      volantes-cursors
    ];

    variables = {
      RUSTICL_ENABLE = "radeonsi";
    };

  };
}
