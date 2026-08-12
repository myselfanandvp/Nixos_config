{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;

  services.tuned.enable = true;

  services.printing.enable = true;


}
