{ config, pkgs, ... }:

{
  security.sudo.wheelNeedsPassword = true;
  security.rtkit.enable = true;
  security.polkit.enable = true;

  networking.firewall.enable = true;
}
