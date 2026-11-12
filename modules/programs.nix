{ pkgs, ... }:

{
  programs = {
    fish.enable = true;
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        stdenv.cc.cc
        zlib
      ];
    };
    appimage = {
      enable = true;
      binfmt = true;
    };
    dconf.enable = true;
    git = {
      enable = true;
      lfs.enable = true;
    };
  };
}
