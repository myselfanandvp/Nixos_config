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
    dconf.enable = true;
  };
}
