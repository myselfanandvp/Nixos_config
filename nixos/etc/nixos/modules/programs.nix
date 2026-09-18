{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  # Add any missing dynamic libraries here if plugins complain
  stdenv.cc.cc
  zlib
  ];


programs.yazi = {
    enable = true;
    plugins = with pkgs.yaziPlugins; {
      mount = mount;
      zoom = zoom;
      "full-border" = full-border;
      restore = restore;
    };
  };

}
