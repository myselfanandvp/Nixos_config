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

  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nixos_config/config/.config/nvim";
  };

}
