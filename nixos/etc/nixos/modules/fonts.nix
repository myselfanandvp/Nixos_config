{ config, pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf 

      # Changed these to the patched Nerd Font versions
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
    ];
    fontconfig.enable = true;
  };
}
