{
  pkgs,
  ...
}:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    initrd = {
      kernelModules = [
        "amdgpu"
      ];
    };

    plymouth = {
      enable = true;
      theme = "spinner";
    };

    kernelParams = [
      "quiet"
      "splash"
      "nosgx"
      "loglevel=3"
      "rd.systemd.show_status=auto"
      "rd.udev.log_level=3"
      "vt.global_cursor_default=0" # Hides the blinking cursor during boot
    ];
    kernelPackages = pkgs.linuxPackages_latest;

    kernel.sysctl = {
      "net.ipv4.conf.eth0.forwarding" = 1; # enable port forwarding for the docker
    };

  };

}
