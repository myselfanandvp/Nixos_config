{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  programs.nix-ld.enable = true;
  programs.helium.enable = true;
  programs.nix-ld.libraries = with pkgs; [
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


programs.qylock = {
            enable = true;
            theme = "material-you";          # any directory name under themes/
            # Optional per-theme tweaks (replaces the interactive prompts):
            themeOptions = {
            };
          };


}
