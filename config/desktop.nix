{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  firefox
  thunderbird
  keepassxc
  ];

  services.xserver.enable = true;
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts._0xproto
  ];
}