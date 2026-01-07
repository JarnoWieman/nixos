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
    prismlauncher
    gpu-screen-recorder-gtk
  ];

  programs.steam.enable = true;
}