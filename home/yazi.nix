{ config, pkgs,outOfStore, ... }:

let
  yaziConfig =
    "${config.home.homeDirectory}/Nixos_config/config/.config/yazi";
in
{
  programs.yazi = {
    enable = true;

    plugins = {
      full-border = pkgs.yaziPlugins.full-border;
      recycle-bin = pkgs.yaziPlugins.recycle-bin;
    };
  };

  xdg.configFile = {
    "yazi/keymap.toml".source =
      outOfStore "${yaziConfig}/keymap.toml";

    "yazi/theme.toml".source =
      outOfStore "${yaziConfig}/theme.toml";

    "yazi/yazi.toml".source =
      outOfStore "${yaziConfig}/yazi.toml";

    "yazi/init.lua".source =
      outOfStore "${yaziConfig}/init.lua";

    "yazi/flavors".source =
      outOfStore "${yaziConfig}/flavors";
  };
}
