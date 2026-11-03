{
  pkgs,
  ...
}:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    sideloadInitLua = true;
    extraPackages = with pkgs; [
      # LazyVim basics
      ripgrep
      fd
      gcc # treesitter parser compilation
      tree-sitter
      lazygit
      # LSPs / formatters (use these instead of Mason on NixOS)
      nixd
      nixfmt # pick one of nixfmt / alejandra
      statix
      lua-language-server
      eslint
      marksman
      stylua
      pyright
      ruff
      typescript-language-server
    ];
  };

}
