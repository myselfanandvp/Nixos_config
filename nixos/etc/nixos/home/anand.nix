{config,pkgs,inputs,...}:
{

imports =[
inputs.noctalia.homeModules.default
];

home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "25.05";
home.enableNixpkgsReleaseCheck = false;

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
