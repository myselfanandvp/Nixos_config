{ _, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
    };
    nftables.enable = true;
    firewall = {
      enable = true;
      checkReversePath = false;
      trustedInterfaces = [ "docker0" ];
      allowedTCPPorts = [
        5555
        5432
        5037
        8081
        80
        443
        2375
        2375
      ];
      allowedUDPPortRanges = [
        {
          from = 5555;
          to = 5585;
        }
      ];
    };
  };

}
