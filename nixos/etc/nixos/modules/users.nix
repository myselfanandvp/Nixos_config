{ config, pkgs, ... }:
{
  users.users.anand = {
    isNormalUser = true;
    description = "anand";
    extraGroups = [ "networkmanager" "wheel" "docker" "distrobox" ];
    packages = with pkgs;[
    fish
    ];
    shell = pkgs.fish;
  };

}
