{config,pkgs,inputs,...}:
{
# Recursively links the entire niri folder to ~/.config/niri/
  xdg.configFile."niri".source = ./niri;
  }
