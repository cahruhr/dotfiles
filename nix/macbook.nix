{ config, pkgs, ... }:

{
  networking.hostName = "daedalus_nix";
  networking.wireless.enable = true;

  # synaptics touchpad config
  services.xserver.synaptics.enable = true;
  services.xserver.synaptics.twoFingerScroll = true;
  services.xserver.synaptics.tapButtons = false;
  services.xserver.synaptics.maxSpeed = "4.0";
  services.xserver.synaptics.minSpeed = "0.7";
  services.xserver.synaptics.accelFactor = "0.005";
  services.xserver.synaptics.scrollDelta = -10;
  services.xserver.synaptics.palmDetect = true;

  # not-flux
  services.redshift.enable = true;
  services.redshift.latitude = "38.0";
  services.redshift.longitude = "-78.0";
  services.redshift.temperature.day = 5000;
  services.redshift.temperature.night = 3000;

  # sound; default to the 2nd audio device (not hdmi)
  sound.enable = true;
  boot.extraModprobeConfig = ''
    options snd slots=snd_hda_intel
    options snd_hda_intel enable=0,1
  '';
}
