{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;

    settings = {
      format = ''[](#7A348E)$os$username[](bg:#FA027D fg:#7A348E)$directory[](fg:#FA027D bg:#FC8160)$git_branch$git_status[](fg:#FC8160 bg:#06669A)$docker_context$kubernetes[](fg:#06669A bg:#A696E6)$time[ ](fg:#A696E6)'';

      username = {
        show_always = false;
        style_user = "bg:#7A348E";
        style_root = "bg:#7A348E";
        format = "[$user ]($style)";
        disabled = false;
      };

      os = {
        style = "bg:#7A348E";
        disabled = true;
      };

      directory = {
        style = "bg:#FA027D";
        format = "[ $path ]($style)";
        truncation_length = 0;
        truncation_symbol = "…/";
        truncate_to_repo = false;
      };

      docker_context = {
        symbol = "🐳 ";
        style = "bg:#06669A";
        format = "[ $symbol $context ]($style)";
      };

      kubernetes = {
        disabled = false;
        symbol = "⚓ ";
        style = "bg:#06669A";
        format = "[ $symbol $context ($namespace) ]($style)";
      };

      git_branch = {
        symbol = "";
        style = "bg:#FC8160";
        format = "[ $symbol $branch ]($style)";
      };

      git_status = {
        style = "bg:#FC8160";
        format = "[$all_status$ahead_behind ]($style)";
      };

      time = {
        disabled = false;
        time_format = "%H:%M";
        style = "bg:#A696E6";
        format = "[ $time ]($style)";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    starship
  ];
}
