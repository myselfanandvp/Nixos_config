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
            theme = "nier-automata";          # any directory name under themes/
            # sddm.enable = true;             # installs theme + sets it active (default)
            # quickshell.enable = true;       # adds `qylock-lock` to PATH (default)

            # Optional per-theme tweaks (replaces the interactive prompts):
            themeOptions = {
              terraria.backgroundMode = "time";              # time | random | static
              Genshin.backgroundMode = "time";
              clockwork.orbital = { themeMode = "dark"; enableWindup = true; };
              osu.gameMode = "menu";                         # menu | game
            };
          };


}
