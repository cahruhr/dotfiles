{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # basics
    vim 
    git 
    wget 
    tmux 
    htop 
    psmisc 
    tree 
    screenfetch
    inotify-tools
    ncdu
    dropbox-cli

    # dev
    gcc
    gnumake 
    gdb 
    clang 
    python 
    python27Packages.pip
    python27Packages.django
    python3 
    python35Packages.pip
    python35Packages.django
    stack 
    cabal-install
    ghc
    rustc 
    cargo 
    apacheHttpd

    # ui 
    rxvt_unicode 
    gmrun 
    source-code-pro 
    chromium 

    # laptop
    i7z 
    acpi 
    acpid
  ];
}
