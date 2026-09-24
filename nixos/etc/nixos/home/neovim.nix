{config,pkgs,inputs,...}:
{
 programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      nodejs_24
      go
      rustc
      python314
      nixd
      pyright
      ruff
      tree-sitter
      lua-language-server
      nil
      alejandra
      stylua
    ];
  };
  }
