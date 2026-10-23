{
  config,
  pkgs,
  inputs,
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
      nodejs_24
      go
      rustc
      cargo
      unzip
      python314
      nixd
      pyright
      ruff
      tree-sitter
      lua-language-server
      nixfmt
      nil
      less
      alejandra
      stylua
      typescript
      typescript-language-server
      ghostscript
      bun
      nixd
      statix
      fd
    ];
  };

  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nixos_config/config/.config/nvim";
  };

}
