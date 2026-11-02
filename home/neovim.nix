{
  pkgs,
  ...
}:

{
  programs.neovim = {
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs; [
      nixd
      less
      lua
      rustc
      nodejs_26
      go
      cargo
      python314
      typescript
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
      fd
    ];
  };

}
