{config,pkgs,inputs,...}:

let
  DotConfig = "${config.home.homeDirectory}/Nixos_config/config/.config";
  outOfStore = config.lib.file.mkOutOfStoreSymlink;
in

{
imports =[
inputs.noctalia.homeModules.default
./git.nix
./noctalia.nix
./neovim.nix
./tmux.nix
./zed.nix
./bashrc.nix
  (import ./yazi.nix {
      inherit config pkgs outOfStore;
    })
];


home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
  # nwg-look
  # qt6Packages.qt6ct
  adw-gtk3
  bibata-cursors
  papirus-icon-theme
  gruvbox-plus-icons
  nerd-fonts.jetbrains-mono
  lazygit
  fuzzel
  lazydocker
  herdr
  python3
  nodejs_latest
];


  xdg.configFile = {
    "fish".source = outOfStore "${DotConfig}/fish";
    "starship.toml".source = outOfStore "${DotConfig}/starship.toml";
    "hypr".source = outOfStore "${DotConfig}/hypr";
    "niri".source = outOfStore "${DotConfig}/niri";
    "mpv".source = outOfStore "${DotConfig}/mpv";
    "kitty".source = outOfStore "${DotConfig}/kitty";
    "fastfetch".source = outOfStore "${DotConfig}/fastfetch";
    "ghostty".source = outOfStore "${DotConfig}/ghostty";
    "wezterm".source = outOfStore "${DotConfig}/wezterm";
    "mango".source = outOfStore "${DotConfig}/manago";
};

home.pointerCursor = {
  enable = true;
  package = pkgs.bibata-cursors;
  name = "Bibata-Modern-Classic";
  size = 10;
};

# home.pointerCursor.hyprcursor = {
#   enable = true;
#   size = 18;
# };   


 gtk = {
    enable = true;

    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 10;
    };

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };

  qt = {
    enable = true;
  };

  home.sessionVariables = {
   # XCURSOR_THEME = "volantes_cursors";
   QT_QPA_PLATFORMTHEME = "qt6ct";
  };

}
