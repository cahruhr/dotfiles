{ config, pkgs, ... }:

{
  boot.loader.gummiboot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
