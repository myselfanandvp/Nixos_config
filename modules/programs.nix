{ pkgs, inputs, ... }:

{
  imports = [
    inputs.auto-cpufreq.nixosModules.default
  ];
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
    git = {
      enable = true;
      lfs.enable = true;
    };
  };
}
