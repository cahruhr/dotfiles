{ config, pkgs, ... }:

{
    # GRUB 2
    boot.loader.grub.enable = true;
    boot.loader.grub.version = 2;

    # where is grub
    boot.loader.grub.device = "/dev/sda";
    boot.initrd.checkJournalingFS = false;

}
