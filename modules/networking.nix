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
      allowedTCPPorts = [
        22
        80
        443
        5555
        5037
        8081
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
