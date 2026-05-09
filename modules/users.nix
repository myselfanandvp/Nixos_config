{ config, pkgs, ... }:

{
  users.users.anand = {
    isNormalUser = true;
    description = "anand";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  users.users.akhil = {
    isNormalUser = true;
    description = "akhil";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
