{ config, pkgs, ... }:

{
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;

 # Use latest kernel.
    kernelPackages = pkgs.linuxPackages_latest;

    initrd = {
      systemd.enable = true;
      kernelModules = [ "amdgpu" "i915" ];
    };

    plymouth = {
      enable = true;
      theme = "spinner";
    };

    kernelParams = [
      "quiet"
      "splash"
    ];
  };
}
