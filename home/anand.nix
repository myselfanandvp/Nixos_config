{config,pkgs,inputs,...}:
{


home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "25.05";
home.enableNixpkgsReleaseCheck = false;
programs.vscode = {
  enable = true;
};


}
