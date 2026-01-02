{ config, pkgs, ... }:

let
   curseforge = import ../packages/curseforge.nix { inherit pkgs; };
in

{
  environment.systemPackages = with pkgs; [
    steam
    heroic
    lutris
    curseforge
    gpu-screen-recorder
  ];

  programs.steam.enable = true;
}