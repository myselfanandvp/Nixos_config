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
      typescript
      typescript-language-server
      vimPlugins.nvim-treesitter-parsers.typescript
      ghostscript
    ];
  };

programs.neovim.plugins = with pkgs.vimPlugins; [
  nvim-treesitter
  nvim-lspconfig
];


  }


