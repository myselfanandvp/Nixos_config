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
  nwg-look
  qt6Packages.qt6ct
  adw-gtk3
  bibata-cursors
  papirus-icon-theme
  gruvbox-plus-icons
  nerd-fonts.jetbrains-mono
  lazygit
  lazydocker
  herdr
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
};

home.pointerCursor = {
  enable = true;
  package = pkgs.volantes-cursors;
  name = "volantes_cursors";
  size = 18;
};

home.pointerCursor.hyprcursor = {
  enable = true;
  size = 18;
};   


 gtk = {
    enable = true;

    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };

    iconTheme = {
      name = "Gruvbox-Plus-Dark";
      package = pkgs.gruvbox-plus-icons;
    };

    cursorTheme = {
      name = "volantes_cursors";
      package = pkgs.volantes-cursors;
      size = 18;
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
   XCURSOR_THEME = "volantes_cursors";
   QT_QPA_PLATFORMTHEME = "qt6ct";
  };

}
