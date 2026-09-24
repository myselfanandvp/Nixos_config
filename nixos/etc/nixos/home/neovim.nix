{config,pkgs,inputs,...}:
{
 programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      ripgrep
      fd
      fzf
      gcc
      gnumake
      tree-sitter
      lua-language-server
      nil
      alejandra
      stylua
    ];
  };
  }
