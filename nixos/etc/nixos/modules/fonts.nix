{config,pkgs,...}:
{
     fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf 
      fira-code
      jetbrains-mono
      fira-code

    ];
    fontconfig.enable = true;
  };
  }
