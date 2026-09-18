{ config, pkgs, inputs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      background-opacity = 0.93;
      adjust-cursor-thickness = "50%";
      background-blur = true;
      font-family = "JetBrainsMono Nerd Font";
      font-size = 14;
    };
  };
}
