{ config, pkgs, ... }:

{

services.xserver.videoDrivers = [ "amdgpu" ];

services.dbus = {
    enable = true;
    implementation = "broker";
    packages = with pkgs; [
      xfconf
    ];
  };

  hardware.bluetooth.enable = true;

  hardware.usb-modeswitch.enable = true;


  services.tuned = {
      enable = true;
      settings = {
        dynamic_tuning = true;
        };
    };



  services.printing.enable = true;

  services.udisks2.enable = true;

  services.gvfs.enable = true;
  
  virtualisation.docker={
    enable = true;
    rootless = {
        enable = true;
        setSocketVariable = true;
      };
  };

services.keyd = {
  enable = true;
  keyboards = {
    default = {
      ids = [ "*" ]; # Selects all connected keyboards
      settings = {
        main = {
          capslock = "overload(control, esc)"; # CapsLock acts as Ctrl when held, Esc when tapped
        };
      };
    };
  };
};

services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  # jack.enable = true;
  wireplumber.enable = true;
};
  
services.flatpak.enable = true;

systemd.services.flatpak-repo = {
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };

}
