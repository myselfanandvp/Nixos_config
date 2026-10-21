{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  programs.nix-ld.enable = true;
  programs.helium.enable = true;
  programs.zen-browser.enable = true;
  programs.nix-ld.libraries = with pkgs; [

  stdenv.cc.cc
  zlib
  ];
  programs.dconf.enable = true;
}
