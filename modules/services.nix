{ pkgs, ... }:

{
  services = {
    displayManager.sddm = {
      enable = true;
      wayland = {
        enable = true;
      };
      settings = {
        Theme = {
          CursorTheme = "Bibata-Modern-Classic";
          CursorSize = 18;
        };
      };
      extraPackages = with pkgs; [
        qt6Packages.qtsvg
        qt6Packages.qt5compat
        qt6Packages.qtmultimedia
      ];
    };

    firewalld.enable = true;

    xserver = {
      videoDrivers = [ "amdgpu" ];
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    dbus = {
      enable = true;
      implementation = "broker";
      packages = with pkgs; [ xfconf ];
    };
    tuned = {
      enable = true;
      settings = {
        dynamic_tuning = true;
      };
    };
    printing.enable = true;
    udisks2.enable = true;
    gvfs.enable = true;
    flatpak.enable = true;

    keyd = {
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

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # jack.enable = true;
      wireplumber.enable = true;
    };

  };

  hardware = {
    bluetooth.enable = true;
    usb-modeswitch.enable = true;
  };

  virtualisation.docker.enable = true;

  systemd.services.flatpak-repo = {
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };

}
