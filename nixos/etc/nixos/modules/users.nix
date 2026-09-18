{ config, pkgs, ... }:
{
  users.users.anand = {
    isNormalUser = true;
    description = "anand";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;
  };

}
