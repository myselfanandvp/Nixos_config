{ pkgs, config, ... }:

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

    xserver = {
      videoDrivers = [
        "amdgpu"
        "nvidia"
      ];
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    dbus = {
      enable = true;
      implementation = "broker";
    };

    printing.enable = true;
    udisks2.enable = true;
    gvfs.enable = true;
    firewalld.enable = true;
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
    graphics.enable = true;
    nvidia = {
      modesetting.enable = true;
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

  };

  virtualisation.docker.enable = true;

  # Docker probes for nft when configuring its firewall integration. The
  # executable is needed in the service PATH even when nftables is enabled.
  systemd.services.docker.path = [ pkgs.nftables ];

  systemd.services.flatpak-repo = {
    wantedBy = [ "multi-user.target" ];
    wants = [ "network-online.target" ];
    after = [ "network-online.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
    serviceConfig = {
      Type = "oneshot";
      Restart = "on-failure";
      RestartSec = "30s";
    };
  };

}
