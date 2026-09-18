{config,pkgs,inputs,...}:
{

imports =[
inputs.noctalia.homeModules.default
];

home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;


programs.git = {
  enable = true;
  settings={
      user={
          name="myselfanandvp";
          email="mailanandvp@gmail.com";
        };
    };
};

  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font Mono";
      size = 14;
    };
  };

programs.noctalia = {
    enable = true;

settings = {
    theme = {
        mode="dark";
        source = "builtin";
        builtin = "Catppuccin";
      };

      wallpaper = {
          enable =true;
        };
  };
  };

}
