{ config, pkgs, lib, ... }:

{
  programs.git = {
    config = {
      user = {
        name  = lib.mkForce "Jarno Wieman";
        email = lib.mkForce "Jarno.Wieman@infosupport.com";
      };
    };
  };
}
