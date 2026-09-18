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
  userName = "myselfanandvp";
  userEmail = "mailanandvp@gmail.com";
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
