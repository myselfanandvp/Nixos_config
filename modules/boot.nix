{ _, pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # Use latest kernel.
    kernelPackages = pkgs.linuxPackages_latest;

    initrd = {
      systemd.enable = true;
      kernelModules = [
        "amdgpu"
        # "i915"
      ];
    };

    plymouth = {
      enable = true;
      theme = "spinner";
    };

    kernelParams = [
      "quiet"
      "splash"
      "loglevel=3"
      "rd.systemd.show_status=auto"
      "rd.udev.log_level=3"
      "vt.global_cursor_default=0" # Hides the blinking cursor during boot
    ];
  };
}
