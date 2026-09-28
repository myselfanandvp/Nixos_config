{ config, pkgs, ... }:
{

  users.users.anand = {
    isNormalUser = true;
    description = "anand";
    extraGroups = [ "networkmanager" "wheel" "docker"  ];
    subGidRanges = [
      { count = 65536; startGid = 1000; }
    ];
    subUidRanges = [
      { count = 65536; startUid = 1000; }
    ];
    shell = pkgs.fish;
  };

}
