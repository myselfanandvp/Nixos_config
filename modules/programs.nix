{ config, pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.fish.enable = true;

  programs.silentSDDM = {
    enable = true;
    theme = "default";
  };
}
