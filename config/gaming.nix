{ config, pkgs, lib, appimageTools, fetchurl, ... }:

{
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
  steam
  heroic
  lutris
  (import ../packages/curseforge.nix { inherit pkgs; })
  ];
}