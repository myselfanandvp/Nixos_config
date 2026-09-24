{config,pkgs,inputs,...}:
{
imports =[
inputs.noctalia.homeModules.default
./git.nix
./noctalia.nix
./neovim.nix
./yazi.nix
];
home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
  # nwg-look
  qt6Packages.qt6ct
  adw-gtk3
  bibata-cursors
  papirus-icon-theme
  gruvbox-plus-icons
  volantes-cursors
  nerd-fonts.jetbrains-mono
  lazygit
  lazydocker
  herdr
];


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

xdg.configFile."nvim".source = ./nvim;

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
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };

}
