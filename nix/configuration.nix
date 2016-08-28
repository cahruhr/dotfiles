{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./boot_macbook.nix
      ./macbook.nix
    ];

  # nvidia broadcom etc
  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

  users.extraUsers.carter = 
    { isNormalUser = true;
      home = "/home/carter";
      description = "Carter Hall";
      extraGroups = [ "wheel" "networkmanager" ];
      shell = "/run/current-system/sw/bin/zsh";
    };

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
    vim git wget tmux htop psmisc tree gcc gnumake gdb clang python python3 stack rustc cargo rxvt_unicode gmrun source-code-pro chromium i7z acpi acpid
  ];

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # X
  services.xserver.enable = true;
  services.xserver.layout = "us";

  # window manager
  services.xserver.windowManager.xmonad.enable = true;

  # "Same thing without a password:"
  security.sudo.wheelNeedsPassword = false;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.03";
}
