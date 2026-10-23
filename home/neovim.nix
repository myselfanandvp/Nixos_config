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
      nil
      alejandra
      stylua
      typescript-language-server
      ghostscript
      bun
      nixd
      statix
      less
      fd
    ];
  };

  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nixos_config/config/.config/nvim";
  };

}
