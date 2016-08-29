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

    # dev
    gcc
    gnumake 
    gdb 
    clang 
    python 
    python3 
    stack 
    rustc 
    cargo 

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
