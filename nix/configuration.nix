{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;

  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda";
  boot.initrd.checkJournalingFS = false;

  programs.zsh.enable = true;

  users.extraUsers.carter = 
    { isNormalUser = true;
      home = "/home/carter";
      description = "Carter Hall";
      extraGroups = [ "wheel" "networkmanager" ];
      shell = "/run/current-system/sw/bin/zsh";
    };

  networking.hostName = "nixos"; # Define your hostname.

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # font settings
  # TODO: fix weirdly rendered letters in sourcecodepro
  fonts.fontconfig.ultimate.substitutions = "ms";

  time.timeZone = "America/New_York";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    vim git wget tmux htop tree gcc gnumake python python3 stack rxvt_unicode gmrun source-code-pro chromium
  ];

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # X
  services.xserver.enable = true;
  services.xserver.layout = "us";

  # window manager
  services.xserver.windowManager.xmonad.enable = true;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.03";
}
