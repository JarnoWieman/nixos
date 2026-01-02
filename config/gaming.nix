{ config, pkgs, ... }:

let
   curseforge = import ../packages/curseforge.nix { inherit pkgs; };
in

{
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    steam
    heroic
    lutris
    curseforge
  ];
}