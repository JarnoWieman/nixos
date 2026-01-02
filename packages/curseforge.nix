{ pkgs }:

let
  pname = "curseforge";
  version = "latest";

  src = pkgs.fetchurl {
    url = "https://curseforge.overwolf.com/downloads/curseforge-${version}-linux.AppImage";
    hash = "sha256-RXW5eFCqHzuM4I+gGjUyyLoQTrp9l6aShIfx/fLiGEU=";
  };

  desktopEntry = pkgs.makeDesktopItem {
    name = pname;
    desktopName = pname;
    exec = pname;
  };
in

pkgs.appimageTools.wrapType2 {
  inherit pname version src;
  extraBwrapArgs = [ "--dir" "/etc/nixos" ];

  extraInstallCommands = ''
    mkdir -p $out/share/applications
    cp ${desktopEntry}/share/applications/${pname}.desktop $out/share/applications/${pname}.desktop
  '';
}
