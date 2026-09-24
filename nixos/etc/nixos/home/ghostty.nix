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
 xdg.configFile."ghostty" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/Nixos_config/config/.config/ghostty";
  };
}
