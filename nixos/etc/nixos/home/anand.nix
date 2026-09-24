{config,pkgs,inputs,...}:
{
imports =[
inputs.noctalia.homeModules.default
./kitty.nix
./git.nix
./noctalia.nix
./tmux.nix
./neovim.nix
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
];
home.pointerCursor = {
  enable = true;
  package = pkgs.bibata-cursors;
  name = "Bibata-Modern-Classic";
  size = 32;
};

home.pointerCursor.hyprcursor = {
  enable = true;
  size = 18;
};   

xdg.configFile."niri".source = ./niri;
xdg.configFile."hypr".source = ./hypr;
xdg.configFile."nvim".source = ./nvim;
xdg.configFile."yazi".source = ./yazi;
xdg.configFile."starship.toml".source = ./starship.toml;
xdg.configFile."herdr".source = ./herdr;
xdg.configFile."fish".source = ./fish;
xdg.configFile."fastfetch".source = ./fastfetch;
xdg.configFile."ghostty".source = ./ghostty;

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
      size = 24;
    };

    font = {
      name = "Adwaita Sans";
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
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };










}
