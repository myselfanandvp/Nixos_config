{ _, ... }:

{
  networking = {
    hostName = "Nixos";
    networkmanager = {
      enable = true;
    };
    nftables.enable = true;
    firewall = {
      enable = true;
      checkReversePath = true;
      trustedInterfaces = [ "docker0" ];
      allowedTCPPorts = [
        5555
        5432
        5037
        80
        8081
        8000
        1025
        5173
        8025
      ];
      allowedUDPPorts = [
        5585
        8025
        53
        5300
        5173
        1025
        8000
      ];
    };
  };

}
