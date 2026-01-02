{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "imk";

  src = pkgs.fetchurl {
      name = "imk";
      url = "https://github.com/ubermorgenland/ingress-migration-kit/releases/download/v0.1.0/imk_0.1.0_linux_amd64.tar.gz";
      sha256 = "sha256:60bbb48a55785cd11f791d05604b483e9b45358ac3dbab33e062d37da65db648";
  };

  phases = [ "installPhase" ];

  installPhase = ''
    mkdir -p $out/bin
    tar -xzf $src -C $out/bin
    chmod +x $out/bin/imk
  '';
}