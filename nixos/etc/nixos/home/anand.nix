{config,pkgs,inputs,...}:
{


home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "25.05";
home.enableNixpkgsReleaseCheck = false;
programs.vscode = {
  enable = true;
  profiles.default.extensions = with pkgs.vscode-extensions; [
    ms-python.python
    ms-vscode.cpptools
    esbenp.prettier-vscode
    formulahendry.code-runner
    catppuccin.catppuccin-vsc-icons
    catppuccin.catppuccin-vsc
  ];
};


}
