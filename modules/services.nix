{ config, pkgs, ... }:

{
  hardware.bluetooth.enable = true;

  services.tuned.enable = true;

  services.printing.enable = true;

  services.keyd = {
  enable = true;
  keyboards = {
    default = {
      ids = [ "*" ]; # Matches all keyboards
      settings = {
        main = {
          capslock = "overload(control, esc)";
        };
      };
    };
  };
};


}
