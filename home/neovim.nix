{config,pkgs,inputs,...}:
{

 programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    # Prevent Home Manager from generating init.lua
    # inside the symlinked ~/.config/nvim directory.
    sideloadInitLua = true;

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
      bun
    ];
  };

programs.neovim.plugins = with pkgs.vimPlugins; [
  nvim-treesitter
  nvim-lspconfig
];

 xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/Nixos_config/config/.config/nvim";
  };

}
