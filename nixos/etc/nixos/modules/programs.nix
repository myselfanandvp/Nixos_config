{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  stdenv.cc.cc
  zlib
  ];
  programs.dconf.enable = true;

}
