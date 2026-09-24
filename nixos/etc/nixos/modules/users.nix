{ config, pkgs, ... }:
{
  users.users.anand = {
    isNormalUser = true;
    description = "anand";
    extraGroups = [ "networkmanager" "wheel" "docker" "distrobox" ];
    packages = with pkgs;[
    ];
    shell = pkgs.fish;
  };

}
