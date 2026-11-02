{
  config,
  pkgs,
  ...
}:
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
      nixd
      pyright
      ruff
      tree-sitter
      lua-language-server
      nixfmt
      alejandra
      stylua
      typescript-language-server
      ghostscript
      bun
      statix
      less
      lessc
      fd
    ];
  };
}
