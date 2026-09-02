{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;

  hardware.usb-modeswitch.enable = true;

  services.tuned.enable = true;

  services.printing.enable = true;

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


}
