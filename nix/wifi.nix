{ config, pkgs, ... };

{
  networking.hostName = "daedalus_nix";
  networking.wireless.enable = true;
}
