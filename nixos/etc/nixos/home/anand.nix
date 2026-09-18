{config,pkgs,inputs,...}:
{
imports =[
inputs.noctalia.homeModules.default
./kitty.nix
./git.nix
./noctalia.nix
./ghostty.nix
];
home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
];

}
